import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCalendarController extends GetxController {
  final todayDateTime = DateTime.now();
  late PageController pageController;

  final Rx<DateTime> _focusedDay = DateTime.now().obs;
  DateTime get focusedDay => _focusedDay.value;

  setFocusedDay(DateTime dateTime) {
    _focusedDay.value = dateTime;
  }
}
