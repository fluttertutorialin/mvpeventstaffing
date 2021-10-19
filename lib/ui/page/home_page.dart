import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widget/event_upcoming_item_view.dart';
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
                                                                      noEventImage,
                                                                      width: Get.width,
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
                                return const EventUpcomingItemView();
                              })
                        ])))));
  }
}
