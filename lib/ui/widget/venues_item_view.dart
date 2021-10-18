import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../resource/app_color.dart';
import '../../resource/app_image.dart';
import '../../route_navigation/route.dart';

class VenuesItemView extends StatelessWidget {
  const VenuesItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 12, left: 12, right: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: boxColor),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              InkWell(
                  onTap: () {
                    Get.toNamed(eventDetailRoute);
                  },
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
}