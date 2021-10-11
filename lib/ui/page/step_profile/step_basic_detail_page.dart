import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../route_navigation/route.dart';
import '../../../resource/app_image.dart';
import '../../component/text_field_component.dart';
import '../../../resource/app_color.dart';
import '../../../resource/app_value.dart';

class StepBasicDetailPage extends StatelessWidget {
  const StepBasicDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
            centerTitle: true,
            elevation: 1,
            backgroundColor: backgroundColor.withOpacity(0.9),
            title: Text(basicInformationTitleString,
                style: Get.textTheme.bodyText1!
                    .merge(const TextStyle(color: whiteColor, fontSize: 18))),
            actions: const [
              Padding(
                  padding: EdgeInsets.fromLTRB(10, 15, 10, 12),
                  child: Text('1/5', style: TextStyle(fontSize: 18)))
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
                          child: Text(startBasicInformationString,
                              style: Get.textTheme.headline1!.merge(
                                  const TextStyle(
                                      color: whiteColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600)),
                              textAlign: TextAlign.center)),
                      const SizedBox(height: 15),
                      Center(
                          child: Text(basicInformationTellUs,
                              style: Get.textTheme.headline1!.merge(
                                  const TextStyle(
                                      color: greyColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600)),
                              textAlign: TextAlign.center)),
                      const SizedBox(height: 15),
                      Container(
                          padding: const EdgeInsets.all(8.0),
                          color: boxColor,
                          child: Row(children: [
                            Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: InkWell(
                                    onTap: () {},
                                    child: Image.asset(profilePictureImage))),
                            const SizedBox(width: 10),
                            Expanded(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                  Text(profilePictureStep,
                                      style: Get.textTheme.headline1!.merge(
                                          const TextStyle(
                                              color: whiteColor,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600))),
                                  const SizedBox(height: 5),
                                  Text(clearPhotoStep,
                                      style: Get.textTheme.headline1!.merge(
                                          const TextStyle(
                                              color: greyColor,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600)))
                                ]))
                          ])),
                      const SizedBox(height: 15),
                      Text(tellUsAboutFieldStep,
                          style: Get.textTheme.headline1!.merge(const TextStyle(
                              color: whiteColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600))),
                      const SizedBox(height: 8),
                      const TextFieldComponent(
                          minLines: 5,
                          maxLines: 5,
                          labelText: tellUsAboutHintString),
                      const SizedBox(height: 15),
                      Text(birthDateStep,
                          style: Get.textTheme.headline1!.merge(const TextStyle(
                              color: whiteColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600))),
                      const SizedBox(height: 8),
                      const TextFieldComponent(labelText: birthDateHintString),
                      const SizedBox(height: 25),
                      Text(socialInformationStep,
                          style: Get.textTheme.headline1!.merge(const TextStyle(
                              color: whiteColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600))),
                      const SizedBox(height: 8),
                      Text(instagramStep,
                          style: Get.textTheme.headline1!.merge(const TextStyle(
                              color: whiteColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600))),
                      const SizedBox(height: 8),
                      const TextFieldComponent(
                          labelText: instagramNameHintString),
                      const SizedBox(height: 15),
                      Text(facebookStep,
                          style: Get.textTheme.headline1!.merge(const TextStyle(
                              color: whiteColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600))),
                      const SizedBox(height: 8),
                      const TextFieldComponent(
                          labelText: facebookNameHintString),
                      const SizedBox(height: 25),
                      Text(vaccinationInfoStep,
                          style: Get.textTheme.headline1!.merge(const TextStyle(
                              color: whiteColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600))),
                      const SizedBox(height: 8),
                      Text(vaccinationDetailStep,
                          style: Get.textTheme.headline1!.merge(const TextStyle(
                              color: greyColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w600))),
                      const SizedBox(height: 8),
                      Text(fullyVaccinatedStep,
                          style: Get.textTheme.headline1!.merge(const TextStyle(
                              color: whiteColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w600))),
                      const SizedBox(height: 15),
                      Row(children: [
                        Expanded(
                            child: InkWell(
                                onTap: () {},
                                child: Container(
                                    width: Get.width,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5)),
                                        border: Border.all(color: whiteColor)),
                                    child: Text(yesButtonString,
                                        style: Get.textTheme.subtitle2!.merge(
                                            const TextStyle(
                                                color: whiteColor,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 18)))))),
                        const SizedBox(width: 15),
                        Expanded(
                            child: InkWell(
                                onTap: () {},
                                child: Container(
                                    width: Get.width,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5)),
                                        border: Border.all(color: whiteColor)),
                                    child: Text(noButtonString,
                                        style: Get.textTheme.subtitle2!.merge(
                                            const TextStyle(
                                                color: whiteColor,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 18))))))
                      ]),
                      const SizedBox(height: 15),
                      InkWell(
                          onTap: () {
                            Get.toNamed(stepContactDetailRoute);
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
                          child: Text('Step 1 of 5',
                              style: TextStyle(color: greyColor)))
                    ]))));
  }
}
