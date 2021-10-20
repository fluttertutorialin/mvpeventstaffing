import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../resource/app_value.dart';
import '../component/text_field_component.dart';
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
                      Center(
                          child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(sortAndFilterTitleString,
                                  style: Get.textTheme.headline1!.merge(
                                      const TextStyle(
                                          color: whiteColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600))))),
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
                        const Icon(Icons.radio_button_off_outlined),
                        const SizedBox(width: 8),
                        Text('Ascending',
                            style: Get.textTheme.headline1!.merge(
                                const TextStyle(
                                    color: whiteColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600))),
                        const SizedBox(width: 40),
                        const Icon(Icons.radio_button_checked_outlined,
                            color: primarySwatchColor),
                        const SizedBox(width: 8),
                        Text('Descending',
                            style: Get.textTheme.headline1!.merge(
                                const TextStyle(
                                    color: whiteColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600)))
                      ]),
                      const SizedBox(height: 20),
                      Text('Filter by Venue',
                          style: Get.textTheme.headline1!.merge(const TextStyle(
                              color: whiteColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600))),
                      const SizedBox(height: 10),
                      const TextFieldComponent(
                          labelText: selectVenueHintString,
                          suffixIcon:
                              Icon(Icons.arrow_drop_down_circle_outlined),
                          enabled: false),
                      const SizedBox(height: 15),
                      Text('Filter by City',
                          style: Get.textTheme.headline1!.merge(const TextStyle(
                              color: whiteColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600))),
                      const SizedBox(height: 10),
                      const TextFieldComponent(
                          labelText: selectVenueCityHintString,
                          suffixIcon:
                              Icon(Icons.arrow_drop_down_circle_outlined),
                          enabled: false),
                      const SizedBox(height: 15),
                      Text('Filter by State',
                          style: Get.textTheme.headline1!.merge(const TextStyle(
                              color: whiteColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600))),
                      const SizedBox(height: 10),
                      const TextFieldComponent(
                          labelText: selectVenueStateHintString,
                          suffixIcon:
                              Icon(Icons.arrow_drop_down_circle_outlined),
                          enabled: false),
                      const SizedBox(height: 10),
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  const BorderRadius.all(
                                      Radius.circular(5)),
                                  gradient: buttonGradient),
                              child: Text(
                                  filterButtonString,
                                  style: Get.textTheme.subtitle2!
                                      .merge(const TextStyle(
                                      color: whiteColor,
                                      fontWeight:
                                      FontWeight.normal,
                                      fontSize: 18))))),
                    ]))));
  }
}
