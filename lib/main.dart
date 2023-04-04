import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:starterpack/BasicApps/basicButtons.dart';
import 'package:starterpack/List&Scroll/Example1/card_listTile.dart';
import 'package:starterpack/BasicApps/columnRowBasics.dart';
import 'package:starterpack/BasicApps/counterPage.dart';
import 'package:starterpack/BasicApps/dropdownButton.dart';
import 'package:starterpack/BasicApps/imageWidget.dart';
import 'package:starterpack/BasicApps/popupMenu.dart';
import 'package:starterpack/List&Scroll/Example2/listView.dart';
import 'package:starterpack/List&Scroll/Example2/listViewLayoutProblemleri.dart';
import 'package:starterpack/List&Scroll/easyLoading.dart';

void main() {
  runApp(const MyApp());
  configLoading();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: lVLProblems(),
      builder: EasyLoading.init(),
    );
  }
}




/*theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      Scaffold(
        appBar: AppBar(),
        body: PopupMenu(),
      ),*/