import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.redAccent
    ..backgroundColor = Colors.yellowAccent
    ..indicatorColor = Colors.green
    ..textColor = Colors.black
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..toastPosition = EasyLoadingToastPosition.bottom
    ..dismissOnTap = true;
}
