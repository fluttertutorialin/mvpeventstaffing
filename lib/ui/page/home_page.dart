import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../route_navigation/route.dart';
import '../../resource/app_image.dart';
import '../../resource/app_value.dart';
import '../../resource/app_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
            child: SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(homeTitleString,
                                    style: Get.textTheme.bodyText1!.merge(
                                        const TextStyle(
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
                          const SizedBox(height: 10),
                          Text(recommendedEvents,
                              style: Get.textTheme.headline1!.merge(
                                  const TextStyle(
                                      color: whiteColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600))),
                          const SizedBox(height: 5),
                          Text(eventBestYourJob,
                              style: Get.textTheme.headline1!.merge(
                                  const TextStyle(
                                      color: greyColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600))),
                          const SizedBox(height: 20),
                          SizedBox(
                              height: 220,
                              child: ListView.builder(
                                  itemCount: 5,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 10, 0),
                                        child: Container(
                                            width: Get.width - 50,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: boxColor),
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      GestureDetector(
                                                          onTap: () {},
                                                          child: ClipRRect(
                                                              borderRadius: const BorderRadius
                                                                      .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          15),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          15)),
                                                              child: Center(
                                                                  child: Image.asset(
                                                                      pendingImage,
                                                                      height:
                                                                          120,
                                                                      fit: BoxFit
                                                                          .fill)))),
                                                      const SizedBox(
                                                          height: 10),
                                                      Row(children: [
                                                        Text(
                                                            'Rockies vs Nationals',
                                                            maxLines: 1,
                                                            style: Get.textTheme
                                                                .bodyText2!
                                                                .merge(const TextStyle(
                                                                    color:
                                                                        whiteColor,
                                                                    fontSize:
                                                                        15))),
                                                        const Spacer(),
                                                        const Icon(
                                                            Icons.chevron_right)
                                                      ]),
                                                      const SizedBox(height: 8),
                                                      Text(
                                                          'Tuesday, September 28th 2021',
                                                          maxLines: 1,
                                                          style: Get.textTheme
                                                              .bodyText1!
                                                              .merge(const TextStyle(
                                                                  color:
                                                                      greyColor,
                                                                  fontSize:
                                                                      14))),
                                                      const SizedBox(height: 5),
                                                      Text(
                                                          'Coors Field | Denver',
                                                          maxLines: 1,
                                                          style: Get.textTheme
                                                              .bodyText1!
                                                              .merge(const TextStyle(
                                                                  color:
                                                                      greyColor,
                                                                  fontSize:
                                                                      12)))
                                                    ]))));
                                  })),
                          const SizedBox(height: 20),
                          Text(upcomingShifts,
                              style: Get.textTheme.headline1!.merge(
                                  const TextStyle(
                                      color: whiteColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600)),
                              textAlign: TextAlign.center),
                          const SizedBox(height: 5),
                          Text(yourUpcomingShifts,
                              style: Get.textTheme.bodyText1!.merge(
                                  const TextStyle(
                                      color: greyColor, fontSize: 16))),
                          ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 5,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext context, int index) {
                                return _upcomingShiftsItemView();
                              })
                        ])))));
  }

  _upcomingShiftsItemView() => Container(
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
