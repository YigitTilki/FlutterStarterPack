import 'package:flutter/material.dart';

class ColumnRow extends StatelessWidget {
  const ColumnRow({ Key? key }) : super(key: key);

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
          child: containerOlustur('E', Colors.orange.shade700, margin: 10),
        ),
        Expanded(
          child: containerOlustur('R', Colors.orange.shade600, margin: 10),
        ),
        Expanded(
          child: containerOlustur('S', Colors.orange.shade500, margin: 10),
        ),
        Expanded(
          child: containerOlustur('L', Colors.orange.shade400, margin: 10),
        ),
        Expanded(
          child: containerOlustur('E', Colors.orange.shade300, margin: 10),
        ),
        Expanded(
          child: containerOlustur('R', Colors.orange.shade200, margin: 10),
        ),
        Expanded(
          child: containerOlustur('İ', Colors.orange.shade100, margin: 10),
        ),
      ],
    );
  }
  Container containerOlustur(String harf, Color renk, {double margin = 0}) {
    return Container(
      height: 75,
      width: 75,
      color: renk,
      margin: EdgeInsets.only(top: margin),
      alignment: Alignment.center,
      child: Text(
        harf,
        style: const TextStyle(fontSize: 48),
      ),
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