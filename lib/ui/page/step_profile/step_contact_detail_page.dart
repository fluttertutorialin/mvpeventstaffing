import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../route_navigation/route.dart';
import '../../component/text_field_component.dart';
import '../../../resource/app_color.dart';
import '../../../resource/app_value.dart';

class StepContactDetailPage extends StatelessWidget {
  const StepContactDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
            centerTitle: true,
            elevation: 1,
            backgroundColor: backgroundColor.withOpacity(0.9),
            title: Text(contactInformationTitleString,
                style: Get.textTheme.bodyText1!
                    .merge(const TextStyle(color: whiteColor, fontSize: 18))),
            actions: const [
              Padding(
                  padding: EdgeInsets.fromLTRB(10, 15, 10, 12),
                  child: Text('2/5', style: TextStyle(fontSize: 18)))
            ]),
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(12),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 5,
                          width: Get.width / 5,
                          color: primarySwatchColor),
                      const SizedBox(height: 15),
                      Center(
                          child: Text(emergencyContactStep,
                              style: Get.textTheme.headline1!.merge(
                                  const TextStyle(
                                      color: whiteColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600)),
                              textAlign: TextAlign.center)),
                      const SizedBox(height: 15),
                      Center(
                          child: Text(emergencyContactWhoStep,
                              style: Get.textTheme.headline1!.merge(
                                  const TextStyle(
                                      color: greyColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600)),
                              textAlign: TextAlign.center)),

                      const SizedBox(height: 15),
                      Text(emergencyContactNameStep,
                          style: Get.textTheme.headline1!.merge(const TextStyle(
                              color: whiteColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600))),
                      const SizedBox(height: 8),
                      const TextFieldComponent(labelText: emergencyContactHintString),

                      const SizedBox(height: 15),
                      Text(emergencyContactPhoneStep,
                          style: Get.textTheme.headline1!.merge(const TextStyle(
                              color: whiteColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600))),
                      const SizedBox(height: 8),
                      const TextFieldComponent(labelText: emergencyContactPhoneHintStep),

                      const SizedBox(height: 15),
                      InkWell(
                          onTap: () {
                            Get.toNamed(stepJobSettingsRoute);
                          },
                          child: Container(
                              width: Get.width,
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5)),
                                  gradient: buttonGradient),
                              child: Text(saveAndContinueButtonString,
                                  style: Get.textTheme.subtitle2!.merge(
                                      const TextStyle(
                                          color: whiteColor,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18))))),
                      const SizedBox(height: 15),
                      const Center(
                          child: Text('Step 2 of 5',
                              style: TextStyle(color: greyColor)))
                    ]))));
  }
}
