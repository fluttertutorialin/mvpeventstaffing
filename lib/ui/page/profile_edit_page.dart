import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/import_collection_controller.dart';
import '../component/text_field_component.dart';
import '../../resource/app_value.dart';
import '../../resource/app_color.dart';

class ProfileEditPage extends GetWidget<ForgotPasswordController> {
  const ProfileEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
            elevation: 1,
            backgroundColor: backgroundColor.withOpacity(0.9),
            title: Text(profileEditTitleString,
                style: Get.textTheme.bodyText1!
                    .merge(const TextStyle(color: whiteColor, fontSize: 18)))),
        body: Form(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                      Row(children: const [
                        Expanded(
                          child: TextFieldComponent(
                              labelText: firstNameHintString),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                            child: TextFieldComponent(
                                labelText: lastNameHintString))
                      ]),
                      const SizedBox(height: 15),
                      const TextFieldComponent(labelText: emailHintString),
                      const SizedBox(height: 15),
                      const TextFieldComponent(labelText: mobileHintString),
                      const SizedBox(height: 15),
                      const TextFieldComponent(
                          labelText: currentPasswordHintString),
                      const SizedBox(height: 15),
                      const TextFieldComponent(
                          labelText: newPasswordHintString),
                      const SizedBox(height: 25),
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
                      const SizedBox(height: 15),
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
                      const SizedBox(height: 20),
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5)),
                                  gradient: buttonGradient),
                              child: Text(updateProfileButtonString,
                                  style: Get.textTheme.subtitle2!.merge(
                                      const TextStyle(
                                          color: whiteColor,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18))))),
                      const SizedBox(height: 15)
                    ])))));
  }
}
