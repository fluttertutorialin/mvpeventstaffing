import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../route_navigation/route.dart';
import '../component/text_field_component.dart';
import '../../resource/app_image.dart';
import '../../resource/app_value.dart';
import '../../resource/app_color.dart';
import 'event_filter_page.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.all(12),
              child: Column(children: [
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(eventsTitleString,
                          style: Get.textTheme.bodyText1!.merge(const TextStyle(
                              color: whiteColor, fontSize: 18))),
                      const Spacer(),
                      Stack(children: [
                        IconButton(
                            icon: const Icon(Icons.notifications_none,
                                color: Colors.white, size: 30),
                            onPressed: () {
                              Get.toNamed(notificationRoute);
                            }),
                        Positioned(
                            right: 8,
                            top: 10,
                            child: Container(
                                width: 14.0,
                                height: 14.0,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: primarySwatchColor)))
                      ])
                    ]),
                Row(children: [
                  const Flexible(
                      child: TextFieldComponent(labelText: searchHintString)),
                  const SizedBox(width: 15),
                  InkWell(
                      onTap: () {
                        Get.bottomSheet(const EventFilterPage());
                      },
                      borderRadius: BorderRadius.circular(4.0),
                      child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: boxColor),
                          child: Image.asset(filterImage)))
                ])
              ])),
          const SizedBox(height: 10),
          Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return eventItemView();
                  }))
        ])));
  }

  eventItemView() => Container(
      margin: const EdgeInsets.only(bottom: 12, left: 12, right: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: boxColor),
      child: Padding(
          padding: const EdgeInsets.all(10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            GestureDetector(
                onTap: () {},
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    child: Center(
                        child: Image.asset(pendingImage,
                            height: 120, fit: BoxFit.fill)))),
            const SizedBox(height: 10),
            Row(children: [
              Text('Rockies vs Nationals',
                  maxLines: 1,
                  style: Get.textTheme.bodyText2!
                      .merge(const TextStyle(color: whiteColor, fontSize: 15))),
              const Spacer(),
              const Icon(Icons.chevron_right)
            ]),
            const SizedBox(height: 8),
            Text('Tuesday, September 28th 2021',
                maxLines: 1,
                style: Get.textTheme.bodyText1!
                    .merge(const TextStyle(color: greyColor, fontSize: 14))),
            const SizedBox(height: 5),
            Text('Coors Field | Denver',
                maxLines: 1,
                style: Get.textTheme.bodyText1!
                    .merge(const TextStyle(color: greyColor, fontSize: 12)))
          ])));
}
