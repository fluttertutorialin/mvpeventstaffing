import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../route_navigation/route.dart';
import '../../../resource/app_color.dart';
import '../../../resource/app_image.dart';
import '../../../resource/app_value.dart';

class ApprovePendingProfilePage extends StatelessWidget {
  const ApprovePendingProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(children: [
              SizedBox(height: Get.width / 9),
              Center(
                  child: Text(submittedTitle,
                      style: Get.textTheme.headline1!.merge(const TextStyle(
                          color: whiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600)))),
              SizedBox(height: Get.width / 2.5),
              Image.asset(pendingImage),
              SizedBox(height: Get.width / 9),
              Center(
                  child: Text(pendingApprovalString,
                      style: Get.textTheme.headline1!.merge(const TextStyle(
                          color: whiteColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600)),
                      textAlign: TextAlign.center)),
              SizedBox(height: Get.width / 12),
              Center(
                  child: Text(approvePeriod,
                      style: Get.textTheme.headline1!.merge(const TextStyle(
                          color: greyColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w600)),
                      textAlign: TextAlign.center)),
              SizedBox(height: Get.width / 12),


              InkWell(
                  onTap: () {
                    Get.offAllNamed(loginRoute);
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          gradient: buttonGradient),
                      child: Text(loginButtonString, //updateProfileButtonString,
                          style: Get.textTheme.subtitle2!.merge(const TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.normal,
                              fontSize: 18)))))
            ])));
  }
}
