import 'package:flutter/material.dart';
import 'package:starterpack/BasicApps/columnRowBasics.dart';
import 'package:starterpack/BasicApps/counterPage.dart';
import 'package:starterpack/BasicApps/imageWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ColumnRow();
  }
}
