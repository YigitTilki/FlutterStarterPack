// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';

class ColumnRow extends StatelessWidget {
  const ColumnRow({Key? key}) : super(key: key);

  Row dartRowOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        containerOlustur('D', Colors.orange.shade800),
        containerOlustur('A', Colors.orange.shade600),
        containerOlustur('R', Colors.orange.shade400),
        containerOlustur('T', Colors.orange.shade200),
      ],
    );
  }

  Column dersleriColumnOlustur() {
    return Column(
      children: [
        Expanded(
          //Expanded sığdırma widgetıdır
          child: containerOlustur('E', Colors.orange.shade700, marginEdgeInsets: EdgeInsets.only(top: 10)),
        ),
        Expanded(
          child: containerOlustur('R', Colors.orange.shade600, marginEdgeInsets: EdgeInsets.only(top: 10)),
        ),
        Expanded(
          child: containerOlustur('S', Colors.orange.shade500, marginEdgeInsets: EdgeInsets.only(top: 10)),
        ),
        Expanded(
          child: containerOlustur('L', Colors.orange.shade400, marginEdgeInsets: EdgeInsets.only(top: 10)),
        ),
        Expanded(
          child: containerOlustur('E', Colors.orange.shade300, marginEdgeInsets: EdgeInsets.only(top: 10)),
        ),
        Expanded(
          child: containerOlustur('R', Colors.orange.shade200, marginEdgeInsets: EdgeInsets.only(top: 10)),
        ),
        Expanded(
          child: containerOlustur('İ', Colors.orange.shade100, marginEdgeInsets: EdgeInsets.only(top: 10)),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Flutter Basic App")),
        ),
        body: Container(
          color: Colors.red[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              dartRowOlustur(),
              Expanded(child: dersleriColumnOlustur()),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange,
          onPressed: (() {}),
          child: const Icon(Icons.access_alarm_rounded),
        ),
      ),
    );
  }
}

Container containerOlustur(String string, Color renk,
    {
    EdgeInsets marginEdgeInsets = const EdgeInsets.all(0),
    double height = 75,
    double width = 75,
    double font = 24,
    Color textColor = Colors.white,
    TextAlign textAlign = TextAlign.center,
    Alignment alignment = Alignment.center}) {
  return Container(
    height: height,
    width: width,
    color: renk,
    margin: marginEdgeInsets,
    alignment: alignment,
    child: Text(
      string,
      style: TextStyle(fontSize: font,color: textColor),
      textAlign: textAlign,
    ),
  );
}
