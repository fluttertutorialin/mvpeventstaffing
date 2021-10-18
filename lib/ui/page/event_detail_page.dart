import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../resource/app_value.dart';
import '../../resource/app_color.dart';

class EventDetailPage extends StatelessWidget {
  const EventDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        bottomNavigationBar:  SizedBox(height: 50, child: InkWell(
            onTap: () {

            },
            child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                        Radius.circular(0)),
                    gradient: buttonGradient),
                child: Text(updateMyAvailabilityButtonString,
                    style: Get.textTheme.subtitle2!.merge(
                        const TextStyle(
                            color: whiteColor,
                            fontWeight: FontWeight.normal,
                            fontSize: 18)))))),
        appBar: AppBar(
            elevation: 1,
            backgroundColor: backgroundColor.withOpacity(0.9),
            title: Text('Event Detail',
                style: Get.textTheme.bodyText1!
                    .merge(const TextStyle(color: whiteColor, fontSize: 18)))),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
              width: Get.width,
              color: boxColor,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('The Doouble Brothers',
                        style: Get.textTheme.headline1!.merge(const TextStyle(
                            color: whiteColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600))),
                    const SizedBox(height: 4),
                    Text('Thursday October, 14 2021',
                        style: Get.textTheme.bodyText1!.merge(
                            const TextStyle(color: greyColor, fontSize: 14))),
                    const SizedBox(height: 10),
                    Text('Forty Mile Road | Wheatland',
                        style: Get.textTheme.bodyText1!.merge(
                            const TextStyle(color: greyColor, fontSize: 16))),
                    const SizedBox(height: 20),
                    Wrap(children: [
                      Container(
                          margin: const EdgeInsets.only(right: 8, bottom: 10),
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          child: Text('Line Look',
                              style: Get.textTheme.bodyText1!.merge(
                                  const TextStyle(
                                      color: whiteColor, fontSize: 14))),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(15.0)))),
                      Container(
                          margin: const EdgeInsets.only(right: 8),
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          child: Text('Line Look',
                              style: Get.textTheme.bodyText1!.merge(
                                  const TextStyle(
                                      color: whiteColor, fontSize: 14))),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(15.0)))),
                      Container(
                          margin: const EdgeInsets.only(right: 8, bottom: 10),
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          child: Text('Stand Worker / Cashier',
                              style: Get.textTheme.bodyText1!.merge(
                                  const TextStyle(
                                      color: whiteColor, fontSize: 14))),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(15.0))))
                    ]),
                  ])),
          const SizedBox(height: 20),
          Container(
              width: Get.width,
              color: boxColor,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Venue Details',
                        style: Get.textTheme.headline1!.merge(const TextStyle(
                            color: whiteColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600))),
                    const SizedBox(height: 5),
                    Text('Toyota Amphitheatre',
                        style: Get.textTheme.bodyText1!.merge(
                            const TextStyle(color: greyColor, fontSize: 16))),
                    const SizedBox(height: 10),
                    Text('Address',
                        style: Get.textTheme.bodyText1!.merge(
                            const TextStyle(color: greyColor, fontSize: 14))),
                    const SizedBox(height: 10),
                    Container(
                        color: whiteColor,
                        height: 150,
                        child: Center(child: Text('Map',
                            style: Get.textTheme.bodyText1!.merge(
                                const TextStyle(
                                    color: primarySwatchColor, fontSize: 14))))),
                  ])),
        ])));
  }
}
