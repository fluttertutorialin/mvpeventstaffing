import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/import_collection_controller.dart';
import '../component/text_field_component.dart';
import '../../resource/app_value.dart';
import '../../resource/app_color.dart';

class ForgotPasswordPage extends GetWidget<ForgotPasswordController> {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
            elevation: 1,
            backgroundColor: backgroundColor.withOpacity(0.9),
            title: Text(forgotPasswordTitleString,
                style: Get.textTheme.bodyText1!
                    .merge(const TextStyle(color: whiteColor, fontSize: 18)))),
        body: Form(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      SizedBox(height: Get.height * .12),
                      Text(forgotPasswordNoWorriesString,
                          style: Get.textTheme.headline1!.merge(const TextStyle(
                              color: whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w600)),
                          textAlign: TextAlign.center),
                      const SizedBox(height: 20),
                      Text(forgotPasswordEnterEmailString,
                          style: Get.textTheme.headline1!.merge(const TextStyle(
                              color: greyColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600))),
                      const SizedBox(height: 30),

                      // Login Form
                      const TextFieldComponent(labelText: emailHintString),
                      const SizedBox(height: 20),

                      // Forgot Password Button
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5)),
                                  gradient: buttonGradient),
                              child: Text(forgotPasswordButtonString,
                                  style: Get.textTheme.subtitle2!.merge(
                                      const TextStyle(
                                          color: whiteColor,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18))))),
                      const SizedBox(height: 15)
                    ])))));
  }
}
