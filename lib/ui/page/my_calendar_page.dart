import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:mvpeventstaffing/route_navigation/route.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../controller/import_collection_controller.dart';
import '../../resource/app_color.dart';

class MyCalendarPage extends GetView<MyCalendarController> {
  const MyCalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
            elevation: 1,
            backgroundColor: backgroundColor.withOpacity(0.9),
            title: Text('My Calendar',
                style: Get.textTheme.bodyText1!
                    .merge(const TextStyle(color: whiteColor, fontSize: 18)))),
        body: Column(children: [
          Obx(() => TableCalendar(
              firstDay: DateTime(2010),
              lastDay: DateTime(2030),
              onPageChanged: (selectedDay) {},
              daysOfWeekStyle: const DaysOfWeekStyle(
                  weekdayStyle: TextStyle(color: primarySwatchColor),
                  weekendStyle: TextStyle(color: primarySwatchColor)),
              calendarStyle: CalendarStyle(
                  markerDecoration: BoxDecoration(
                      color: primarySwatchColor,
                      borderRadius: BorderRadius.circular(12.0)),
                  todayTextStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      color: whiteColor,
                      fontWeight: FontWeight.normal),
                  defaultTextStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                      color: whiteColor)),
              calendarBuilders: CalendarBuilders(
                  selectedBuilder: (context, date, events) => Container(
                      margin: const EdgeInsets.all(5.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: primarySwatchColor,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Text(date.day.toString(),
                          style: const TextStyle(color: whiteColor))),
                  todayBuilder: (context, date, events) => Container(
                      margin: const EdgeInsets.all(5.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: primarySwatchColor,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Text(date.day.toString(),
                          style: const TextStyle(color: whiteColor)))),
              startingDayOfWeek: StartingDayOfWeek.monday,
              currentDay: controller.focusedDay,
              focusedDay: controller.focusedDay,
              headerVisible: true,
              calendarFormat: CalendarFormat.month,
              sixWeekMonthsEnforced: false,
              shouldFillViewport: false,
              headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleTextStyle: Get.textTheme.bodyText2!.merge(
                      const TextStyle(
                          color: whiteColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 18)),
                  titleCentered: true),
              onDaySelected: (selectedDay, focusedDay) {
                controller.setFocusedDay(selectedDay);
              },
              onCalendarCreated: (controllerCreate) =>
                  controller.pageController = controllerCreate,
              onFormatChanged: (format) {})),
          Expanded(
              child: SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.only(
                          left: 12, right: 12, bottom: 12),
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context, int index) {
                            return _eventItemView();
                          }))))
        ]));
  }

  _eventItemView() => Container(
      margin: const EdgeInsets.only(top: 10),
      child: GestureDetector(
          onTap: () {
            Get.toNamed(eventDetailRoute);
          },
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: boxColor),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      Text('29',
                          style: Get.textTheme.headline3!.merge(const TextStyle(
                              color: whiteColor, fontSize: 20))),
                      Text('Sep',
                          style: Get.textTheme.bodyText1!.merge(
                              const TextStyle(color: whiteColor, fontSize: 16)))
                    ])),
                const SizedBox(width: 15),
                Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      const SizedBox(height: 10),
                      Text('Gold Over America Tour',
                          style: Get.textTheme.bodyText2!.merge(const TextStyle(
                              color: whiteColor, fontSize: 15))),
                      const SizedBox(height: 1),
                      Text('Bar Manager',
                          style: Get.textTheme.bodyText1!.merge(const TextStyle(
                              color: primarySwatchColor, fontSize: 12))),
                      const SizedBox(height: 10),
                      Text('Tuesday, September 29th 2021',
                          style: Get.textTheme.bodyText1!.merge(const TextStyle(
                              color: whiteColor, fontSize: 14))),
                      const SizedBox(height: 5),
                      Text('1:30pm - 2:30am',
                          style: Get.textTheme.bodyText1!.merge(const TextStyle(
                              color: whiteColor, fontSize: 14))),
                      const SizedBox(height: 10),
                      Text('Coors Field | Denver',
                          style: Get.textTheme.bodyText1!.merge(const TextStyle(
                              color: whiteColor, fontSize: 14))),
                      const SizedBox(height: 10)
                    ])),
                const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.chevron_right))
              ]))));
}
