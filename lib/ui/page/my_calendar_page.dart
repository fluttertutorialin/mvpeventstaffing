import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../controller/import_collection_controller.dart';
import '../../resource/app_color.dart';
import '../widget/event_upcoming_item_view.dart';
import '../../resource/app_value.dart';

class MyCalendarPage extends GetView<MyCalendarController> {
  const MyCalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
            elevation: 1,
            backgroundColor: backgroundColor.withOpacity(0.9),
            title: Text(myCalendarTitleString,
                style: Get.textTheme.bodyText1!
                    .merge(const TextStyle(color: whiteColor, fontSize: 18)))),
        body: Column(children: [
          Obx(() => TableCalendar(
              firstDay: DateTime(2010),
              lastDay: DateTime(2030),
              onPageChanged: (selectedDay) {},
              daysOfWeekStyle: _daysOfWeekStyle(),
              calendarStyle: _calendarStyle(),
              calendarBuilders: _calendarBuilders(),
              startingDayOfWeek: StartingDayOfWeek.monday,
              currentDay: controller.focusedDay,
              focusedDay: controller.focusedDay,
              headerVisible: true,
              calendarFormat: CalendarFormat.month,
              sixWeekMonthsEnforced: false,
              shouldFillViewport: false,
              headerStyle: _headerStyle(),
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
                            return const EventUpcomingItemView();
                          }))))
        ]));
  }

  _daysOfWeekStyle() => const DaysOfWeekStyle(
      weekdayStyle: TextStyle(color: primarySwatchColor),
      weekendStyle: TextStyle(color: primarySwatchColor));

  _headerStyle() => HeaderStyle(
      formatButtonVisible: false,
      titleTextStyle: Get.textTheme.bodyText2!.merge(const TextStyle(
          color: whiteColor, fontWeight: FontWeight.normal, fontSize: 18)),
      titleCentered: true);

  //Event marker decoration markerDecoration
  _calendarStyle() => CalendarStyle(
      markerDecoration: BoxDecoration(
          color: primarySwatchColor, borderRadius: BorderRadius.circular(12.0)),
      todayTextStyle: const TextStyle(
          fontFamily: 'Poppins',
          color: whiteColor,
          fontWeight: FontWeight.normal),
      defaultTextStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.normal,
          color: whiteColor));

  _calendarBuilders() => CalendarBuilders(
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
              style: const TextStyle(color: whiteColor))));
}
