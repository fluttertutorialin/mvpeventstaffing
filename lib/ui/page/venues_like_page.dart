import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widget/venues_item_view.dart';
import '../../controller/import_collection_controller.dart';
import '../../resource/app_value.dart';
import '../../resource/app_color.dart';

class VenuesLikePage extends GetWidget<VenuesLikeController> {
  const VenuesLikePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
            elevation: 1,
            backgroundColor: backgroundColor.withOpacity(0.9),
            title: Text(myVenuesTitleString,
                style: Get.textTheme.bodyText1!.merge(const TextStyle(
                    color: whiteColor,
                    fontSize: 18)))),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return const VenuesItemView();
            }));
  }
}
