import 'package:flutter/material.dart';
import '../../resource/app_color.dart';

class CustomSwitch extends StatefulWidget {
  final bool? value;
  final ValueChanged<bool>? onChanged;
  final Color? activeColor;
  final Color? inactiveColor;
  final String? activeText;
  final String? inactiveText;
  final Color? activeTextColor;
  final Color? inactiveTextColor;

  const CustomSwitch(
      {Key? key,
      this.value,
      this.onChanged,
      this.activeColor,
      this.inactiveColor = Colors.grey,
      this.activeText = '',
      this.inactiveText = '',
      this.activeTextColor = Colors.white70,
      this.inactiveTextColor = Colors.white70})
      : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  late Animation _circleAnimation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
            begin: widget.value! ? Alignment.centerRight : Alignment.centerLeft,
            end: widget.value! ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 8.0, top: 8),
        child: AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              return GestureDetector(
                  onTap: () {
                    if (_animationController.isCompleted) {
                      _animationController.reverse();
                    } else {
                      _animationController.forward();
                    }
                    widget.value == false
                        ? widget.onChanged!(true)
                        : widget.onChanged!(false);
                  },
                  child: Container(
                      width: 55.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors:
                                _circleAnimation.value != Alignment.centerLeft
                                    ? [
                                        const Color(0xffFF3FFA),
                                        const Color(0xff0037BF)
                                      ]
                                    : [filColor, filColor]),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(
                              top: 4.0, bottom: 4.0, right: 4.0, left: 4.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                _circleAnimation.value == Alignment.centerRight
                                    ? Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20.0, right: 0),
                                        child: Text(widget.activeText!,
                                            style: TextStyle(
                                                color: widget.activeTextColor,
                                                fontWeight: FontWeight.w900,
                                                fontSize: 16.0)))
                                    : Container(),
                                Align(
                                    alignment: _circleAnimation.value,
                                    child: Container(
                                      width: 23.0,
                                      height: 23.0,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: _circleAnimation.value ==
                                                  Alignment.centerLeft
                                              ? greyColor
                                              : Colors.black87),
                                    )),
                                _circleAnimation.value == Alignment.centerLeft
                                    ? Padding(
                                        padding: const EdgeInsets.only(
                                            left: 0, right: 20.0),
                                        child: Text(widget.inactiveText!,
                                            style: TextStyle(
                                                color: widget.inactiveTextColor,
                                                fontWeight: FontWeight.w900,
                                                fontSize: 16.0)))
                                    : Container()
                              ]))));
            }));
  }
}
