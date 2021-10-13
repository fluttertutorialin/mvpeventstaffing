import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../route_navigation/route.dart';
import '../component/text_field_component.dart';
import '../../resource/app_value.dart';
import '../../resource/app_image.dart';
import '../../resource/app_color.dart';
import '../../../controller/login_controller.dart';

class LoginPage extends GetWidget<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Form(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      SizedBox(height: Get.height * .12),
                      Image.asset(logoUIImage, scale: 8),
                      const SizedBox(height: 10),
                      Text(loginWelComeString,
                          style: Get.textTheme.headline1!.merge(const TextStyle(
                              color: whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w600)),
                          textAlign: TextAlign.center),
                      const SizedBox(height: 20),
                      Text(loginDescriptionString,
                          style: Get.textTheme.headline1!.merge(const TextStyle(
                              color: greyColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600))),
                      const SizedBox(height: 30),

                      // Login Form
                      const TextFieldComponent(labelText: emailHintString),
                      const SizedBox(height: 15),
                      const TextFieldComponent(labelText: passwordHintString),

                      // Forgot Password
                      Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.centerRight,
                          child: InkWell(
                              child: Text(forgotPassword,
                                  style: Get.textTheme.bodyText2!.merge(
                                      const TextStyle(
                                          color: whiteColor, fontSize: 15))),
                              onTap: () {
                                Get.toNamed(forgotPasswordRoute);
                              })),
                      const SizedBox(height: 20),
                      // Login Button
                      InkWell(
                          onTap: () {
                            Get.toNamed(approvedProfileRoute);
                          },
                          child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5)),
                                  gradient: buttonGradient),
                              child: Text(loginButtonString,
                                  style: Get.textTheme.subtitle2!.merge(
                                      const TextStyle(
                                          color: whiteColor,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18))))),
                      SizedBox(height: Get.height * .055),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(doNotAccount,
                                style: Get.textTheme.headline1!.merge(
                                    const TextStyle(
                                        color: whiteColor, fontSize: 15))),
                            const SizedBox(width: 10),
                            InkWell(
                                child: Text(signUpButtonString,
                                    style: Get.textTheme.bodyText2!.merge(
                                        const TextStyle(
                                            color: whiteColor,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15))),
                                onTap: () {
                                  Get.toNamed(signUpRoute);
                                })
                          ]),
                      const SizedBox(height: 15)
                    ])))));
  }
}
