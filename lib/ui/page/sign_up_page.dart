import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../route_navigation/route.dart';
import '../../controller/import_collection_controller.dart';
import '../component/text_field_component.dart';
import '../../resource/app_value.dart';
import '../../resource/app_color.dart';

class SignUpPage extends GetWidget<SignUpController> {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
            elevation: 1,
            backgroundColor: backgroundColor.withOpacity(0.9),
            title: Text(signUpTitleString,
                style: Get.textTheme.bodyText1!.merge(const TextStyle(
                    color: whiteColor,
                    fontSize: 18)))),
        body: Form(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      SizedBox(height: Get.height * .12),

                      // Sign Up Form
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
                      const TextFieldComponent(labelText: passwordHintString),
                      const SizedBox(height: 15),
                      const TextFieldComponent(
                          labelText: confirmPasswordHintString),

                      const SizedBox(height: 20),

                      // Sign Up Button
                      InkWell(
                          onTap: () {
                            Get.toNamed(verifyOtpRoute);
                          },
                          child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5)),
                                  gradient: buttonGradient),
                              child: Text(signUpButtonString,
                                  style: Get.textTheme.subtitle2!.merge(
                                      const TextStyle(
                                          color: whiteColor,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18))))),

                      const SizedBox(height: 15)
                    ])))));
  }
}
