import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../resource/app_color.dart';
import '../../resource/app_image.dart';
import '../../route_navigation/route.dart';

class EventUpcomingItemView extends StatelessWidget {
  const EventUpcomingItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10),
        child: GestureDetector(
            onTap: () {
              Get.toNamed(eventDetailRoute);
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: boxColor),
                child:
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text('29',
                            style: Get.textTheme.headline3!.merge(const TextStyle(
                                color: whiteColor, fontSize: 20))),
                        Text('Sep',
                            style: Get.textTheme.bodyText1!.merge(
                                const TextStyle(color: whiteColor, fontSize: 16)))
                      ])),
                  const SizedBox(width: 15),
                  Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            Text('Gold Over America Tour',
                                style: Get.textTheme.bodyText2!.merge(const TextStyle(
                                    color: whiteColor, fontSize: 15))),
                            const SizedBox(height: 1),
                            Text('Bar Manager',
                                style: Get.textTheme.bodyText1!.merge(const TextStyle(
                                    color: primarySwatchColor, fontSize: 12))),
                            const SizedBox(height: 10),
                            Text('Tuesday, September 29th 2021',
                                style: Get.textTheme.bodyText1!.merge(const TextStyle(
                                    color: whiteColor, fontSize: 14))),
                            const SizedBox(height: 5),
                            Text('1:30pm - 2:30am',
                                style: Get.textTheme.bodyText1!.merge(const TextStyle(
                                    color: whiteColor, fontSize: 14))),
                            const SizedBox(height: 10),
                            Text('Coors Field | Denver',
                                style: Get.textTheme.bodyText1!.merge(const TextStyle(
                                    color: whiteColor, fontSize: 14))),
                            const SizedBox(height: 10)
                          ])),
                  const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.chevron_right))
                ]))));
  }
}
