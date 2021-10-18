import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widget/venues_item_view.dart';
import 'event_filter_page.dart';
import '../../route_navigation/route.dart';
import '../component/text_field_component.dart';
import '../../resource/app_image.dart';
import '../../resource/app_value.dart';
import '../../resource/app_color.dart';

class VenuesPage extends StatelessWidget {
  const VenuesPage({Key? key}) : super(key: key);

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
                      child: TextFieldComponent(labelText: searchVenuesHintString)),
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
                    return const VenuesItemView();
                  }))
        ])));
  }
}
