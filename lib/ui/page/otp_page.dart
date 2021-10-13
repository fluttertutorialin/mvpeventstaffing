import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import '../../controller/import_collection_controller.dart';
import '../../resource/app_color.dart';
import '../../resource/app_value.dart';
import '../../route_navigation/route.dart';

class OtpPage extends GetView<OtpController> {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
            elevation: 1,
            backgroundColor: backgroundColor.withOpacity(0.9),
            title: Text(verifyMobileTitleString,
                style: Get.textTheme.bodyText1!
                    .merge(const TextStyle(color: whiteColor, fontSize: 18)))),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(children: [
                  SizedBox(height: widthSize / 3.5),
                  Center(
                      child: Text('$enter6DigitCodeString \n +91 9586331823',
                          style: Get.textTheme.headline1!.merge(const TextStyle(
                              color: greyColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600)),
                          textAlign: TextAlign.center)),
                  const SizedBox(height: 40),
                  Center(
                      child: Container(
                          margin: const EdgeInsets.only(left: 8, right: 8),
                          child: Center(
                              child: PinCodeTextField(
                            pinBoxColor: filColor,
                            highlightColor: textFieldBorderColor,
                            autofocus: false,
                            pinBoxHeight: 50,
                            pinBoxWidth: 45,
                            highlight: true,
                            maxLength: 6,
                            pinBoxRadius: 1,
                            wrapAlignment: WrapAlignment.start,
                            pinTextStyle: Get.textTheme.headline1!.merge(
                                const TextStyle(
                                    color: whiteColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600)),
                            pinTextAnimatedSwitcherTransition:
                                ProvidedPinBoxTextAnimation.scalingTransition,
                            pinTextAnimatedSwitcherDuration:
                                const Duration(milliseconds: 300),
                          )))),
                  const SizedBox(height: 20),
                  // Verify Mobile Button
                  InkWell(
                      onTap: () {
                        Get.toNamed(otpSuccessRoute);
                      },
                      child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              gradient: buttonGradient),
                          child: Text(verifyMobileButtonString,
                              style: Get.textTheme.subtitle2!.merge(
                                  const TextStyle(
                                      color: whiteColor,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18))))),

                  const SizedBox(height: 20),
                  Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      padding: const EdgeInsets.all(15),
                      alignment: Alignment.bottomCenter,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(notReceivedCodeString,
                                style: Get.textTheme.headline1!.merge(
                                    const TextStyle(
                                        color: whiteColor, fontSize: 15))),
                            const SizedBox(width: 10),
                            Text(resendCodeButtonString,
                                style: Get.textTheme.bodyText2!.merge(
                                    const TextStyle(
                                        color: whiteColor,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15)))
                          ]))
                ]))));
  }
}
