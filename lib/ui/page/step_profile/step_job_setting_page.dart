import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../route_navigation/route.dart';
import '../../widget/custom_switch.dart';
import '../../../resource/app_color.dart';
import '../../../resource/app_value.dart';

class StepJobSettingPage extends StatelessWidget {
  const StepJobSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
            centerTitle: true,
            elevation: 1,
            backgroundColor: backgroundColor.withOpacity(0.9),
            title: Text(jobPreferencesTitleString,
                style: Get.textTheme.bodyText1!
                    .merge(const TextStyle(color: whiteColor, fontSize: 18))),
            actions: const [
              Padding(
                  padding: EdgeInsets.fromLTRB(10, 15, 10, 12),
                  child: Text('3/5', style: TextStyle(fontSize: 18)))
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
                          child: Text(jobSkillInterestedStep,
                              style: Get.textTheme.headline1!.merge(
                                  const TextStyle(
                                      color: whiteColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600)),
                              textAlign: TextAlign.center)),
                      const SizedBox(height: 15),
                      Center(
                          child: Text(tellUsJobAbout,
                              style: Get.textTheme.headline1!.merge(
                                  const TextStyle(
                                      color: greyColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600)),
                              textAlign: TextAlign.center)),
                      const SizedBox(height: 15),
                      Container(
                          color: boxColor,
                          child: Column(children: [
                            Row(children: [
                              CustomSwitch(value: false, onChanged: (value) {}),
                              const SizedBox(width: 10),
                              Text(lineLook,
                                  style: Get.textTheme.headline1!.merge(
                                      const TextStyle(
                                          color: whiteColor,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600)))
                            ]),
                            Text(lineLookDetail,
                                style: Get.textTheme.headline1!.merge(
                                    const TextStyle(
                                        color: greyColor,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600)))
                          ])),
                      const SizedBox(height: 15),
                      Container(
                          color: boxColor,
                          child: Column(children: [
                            Row(children: [
                              CustomSwitch(value: false, onChanged: (value) {}),
                              const SizedBox(width: 10),
                              Text(fineDiningServer,
                                  style: Get.textTheme.headline1!.merge(
                                      const TextStyle(
                                          color: whiteColor,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600)))
                            ]),
                            Text(fineDiningServerDetail,
                                style: Get.textTheme.headline1!.merge(
                                    const TextStyle(
                                        color: greyColor,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600)))
                          ])),
                      const SizedBox(height: 15),
                      Container(
                          color: boxColor,
                          child: Column(children: [
                            Row(children: [
                              CustomSwitch(value: false, onChanged: (value) {}),
                              const SizedBox(width: 10),
                              Text(server,
                                  style: Get.textTheme.headline1!.merge(
                                      const TextStyle(
                                          color: whiteColor,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600)))
                            ]),
                            Text(serverDetail,
                                style: Get.textTheme.headline1!.merge(
                                    const TextStyle(
                                        color: greyColor,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600)))
                          ])),
                      const SizedBox(height: 15),
                      Container(
                          color: boxColor,
                          child: Column(children: [
                            Row(children: [
                              CustomSwitch(value: false, onChanged: (value) {}),
                              const SizedBox(width: 10),
                              Text(steward,
                                  style: Get.textTheme.headline1!.merge(
                                      const TextStyle(
                                          color: whiteColor,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600)))
                            ]),
                            Text(stewardDetail,
                                style: Get.textTheme.headline1!.merge(
                                    const TextStyle(
                                        color: greyColor,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600)))
                          ])),
                      const SizedBox(height: 15),

                      InkWell(
                          onTap: () {
                            Get.toNamed(stepUploadDocumentRoute);
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
                          child: Text('Step 3 of 5',
                              style: TextStyle(color: greyColor)))
                    ]))));
  }
}
