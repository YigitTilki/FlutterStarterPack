import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Row dartRowOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 75,
          width: 75,
          color: Colors.orange[800],
          alignment: Alignment.center,
          child: Text(
            "D",
            style: TextStyle(fontSize: 48),
          ),
        ),
        Container(
          height: 75,
          width: 75,
          color: Colors.orange[600],
          alignment: Alignment.center,
          child: Text(
            "A",
            style: TextStyle(fontSize: 48),
          ),
        ),
        Container(
          height: 75,
          width: 75,
          color: Colors.orange[400],
          alignment: Alignment.center,
          child: Text(
            "R",
            style: TextStyle(fontSize: 48),
          ),
        ),
        Container(
          height: 75,
          width: 75,
          color: Colors.orange[200],
          alignment: Alignment.center,
          child: Text(
            "T",
            style: TextStyle(fontSize: 48),
          ),
        ),
      ],
    );
  }

  Column dersleriColumnOlustur() {
    return Column(
      children: [
        Expanded(
          child: Container(
            height: 75,
            width: 75,
            margin: EdgeInsets.only(top: 10),
            color: Colors.orange[700],
            alignment: Alignment.center,
            child: Text(
              "E",
              style: TextStyle(fontSize: 48),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 75,
            width: 75,
            margin: EdgeInsets.only(top: 10),
            color: Colors.orange[600],
            alignment: Alignment.center,
            child: Text(
              "R",
              style: TextStyle(fontSize: 48),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 75,
            width: 75,
            margin: EdgeInsets.only(top: 10),
            color: Colors.orange[500],
            alignment: Alignment.center,
            child: Text(
              "S",
              style: TextStyle(fontSize: 48),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 75,
            width: 75,
            margin: EdgeInsets.only(top: 10),
            color: Colors.orange[400],
            alignment: Alignment.center,
            child: Text(
              "L",
              style: TextStyle(fontSize: 48),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 75,
            width: 75,
            margin: EdgeInsets.only(top: 10),
            color: Colors.orange[300],
            alignment: Alignment.center,
            child: Text(
              "E",
              style: TextStyle(fontSize: 48),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 75,
            width: 75,
            margin: EdgeInsets.only(top: 10),
            color: Colors.orange[200],
            alignment: Alignment.center,
            child: Text(
              "R",
              style: TextStyle(fontSize: 48),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 75,
            width: 75,
            margin: EdgeInsets.only(top: 10),
            color: Colors.orange[100],
            alignment: Alignment.center,
            child: Text(
              "I",
              style: TextStyle(fontSize: 48),
            ),
          ),
        ),
      ],
    );
  }

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Basic App"),
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
          child: Icon(Icons.access_alarm_rounded),
        ),
      ),
    );
  }
}
