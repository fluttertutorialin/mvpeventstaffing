import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../resource/app_color.dart';

class EventFilterPage extends StatelessWidget {
  const EventFilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(color: boxColor),
            child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Center(
                            child: Padding(
                                padding: EdgeInsets.only(left: Get.width / 3),
                                child: Text('Sort and Filter',
                                    style: Get.textTheme.headline1!.merge(
                                        const TextStyle(
                                            color: whiteColor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600))))),
                        const Spacer(),
                        IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(Icons.cancel, color: greyColor))
                      ]),
                      Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: greyColor),
                      const SizedBox(height: 10),
                      Text('Sort by Date',
                          style: Get.textTheme.headline1!.merge(const TextStyle(
                              color: greyColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600))),
                      const SizedBox(height: 10),
                      Row(children: [
                        Text('Ascending',
                            style: Get.textTheme.headline1!.merge(
                                const TextStyle(
                                    color: whiteColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600))),
                        const SizedBox(width: 40),
                        Text('Descending',
                            style: Get.textTheme.headline1!.merge(
                                const TextStyle(
                                    color: whiteColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600)))
                      ]),
                      const SizedBox(height: 10),
                      Text('Filter by Venue',
                          style: Get.textTheme.headline1!.merge(const TextStyle(
                              color: whiteColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600))),
                      const SizedBox(height: 10),
                      const SizedBox(height: 10),
                      Text('Filter by City',
                          style: Get.textTheme.headline1!.merge(const TextStyle(
                              color: whiteColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600))),
                      const SizedBox(height: 10),
                      const SizedBox(height: 10),
                      Text('Filter by State',
                          style: Get.textTheme.headline1!.merge(const TextStyle(
                              color: whiteColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600))),
                      const SizedBox(height: 10),
                    ]))));
  }
}
