import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../route_navigation/route.dart';
import '../../resource/app_value.dart';
import '../../resource/app_color.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Column(children: [
            Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(accountTitleString,
                          style: Get.textTheme.bodyText1!.merge(const TextStyle(
                              color: whiteColor, fontSize: 18))),
                      const Spacer(),
                      Stack(children: [
                        IconButton(
                            icon: const Icon(Icons.notifications_none,
                                color: Colors.white, size: 30),
                            onPressed: () {
                              Get.toNamed(notificationRoute);
                            }),
                        Positioned(
                            right: 8,
                            top: 10,
                            child: Container(
                                width: 14.0,
                                height: 14.0,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: primarySwatchColor)))
                      ])
                    ])),
            Column(children: [
              Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(children: [
                    const CircleAvatar(radius: 40),
                    const SizedBox(width: 10),
                    Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          Text('Lakhani Kamlesh',
                              style: Get.textTheme.headline1!.merge(
                                  const TextStyle(
                                      color: whiteColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600))),
                          Text('kamal.lakhani56@gmail.com',
                              style: Get.textTheme.headline1!.merge(
                                  const TextStyle(
                                      color: whiteColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600)))
                        ]))
                  ])),
              const SizedBox(height: 25),
              _menuWidget(name: 'My Calendar'),
              const SizedBox(height: 10),
              _menuWidget(name: 'My Job Preferences'),
              const SizedBox(height: 10),
              _menuWidget(name: 'My Venues'),
              const SizedBox(height: 10),
              _menuWidget(name: 'Help & Support'),
              const SizedBox(height: 10),
              _menuWidget(name: 'About Us'),
              const SizedBox(height: 10),
              _menuWidget(name: 'Privacy Policy'),
              const SizedBox(height: 10),
              _menuWidget(name: 'Terms & Conditions'),
              const SizedBox(height: 10),
              _menuWidget(
                  name: 'Logout',
                  onPress: () {
                    Get.offAllNamed(loginRoute);
                  })
            ])
          ])
        ])));
  }

  _menuWidget({String? name, Function()? onPress}) {
    return InkWell(
        child: Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 12, right: 12),
            child: Row(children: [
              Text(name!,
                  style: Get.textTheme.headline1!.merge(const TextStyle(
                      color: whiteColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600)))
            ])),
        onTap: () {
          onPress!();
        });
  }
}
