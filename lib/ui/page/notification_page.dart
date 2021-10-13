import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../resource/app_color.dart';
import '../../resource/app_value.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
            elevation: 1,
            backgroundColor: backgroundColor.withOpacity(0.9),
            title: Text(notificationTitleString,
                style: Get.textTheme.bodyText1!
                    .merge(const TextStyle(color: whiteColor, fontSize: 18)))),
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            margin: const EdgeInsets.only(top: 12, left: 12, right: 12), child: Column(children: [
                          Container(
                               padding: const EdgeInsets.all(10),
                              color: boxColor,
                              child: Column(children: [
                                    Row(children: [
                                      Text('You have been accepted',
                                          style: Get.textTheme.bodyText2!.merge(
                                              const TextStyle(
                                                  color: whiteColor,
                                                  fontSize: 15))),
                                      const Spacer(),
                                      Text('1hr ago',
                                          style: Get.textTheme.bodyText1!.merge(
                                              const TextStyle(
                                                  color: greyColor,
                                                  fontSize: 12)))
                                    ]),
                                    const SizedBox(height: 10),
                                    Text(
                                        'You been accepted for LAFC vs Portland as Bar Manager. Sep 29',
                                        style: Get.textTheme.bodyText1!.merge(
                                            const TextStyle(
                                                color: greyColor,
                                                fontSize: 14)))
                                  ]))
                        ]));
                      }))
            ])));
  }
}
