import 'package:flutter/material.dart';
import 'package:starterpack/BasicApps/basicButtons.dart';
import 'package:starterpack/List&Scroll/Example1/card_listTile.dart';
import 'package:starterpack/BasicApps/columnRowBasics.dart';
import 'package:starterpack/BasicApps/counterPage.dart';
import 'package:starterpack/BasicApps/dropdownButton.dart';
import 'package:starterpack/BasicApps/imageWidget.dart';
import 'package:starterpack/BasicApps/popupMenu.dart';
import 'package:starterpack/List&Scroll/Example2/listView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: listViewEx(),
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