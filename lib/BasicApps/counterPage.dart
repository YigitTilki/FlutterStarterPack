import 'package:flutter/material.dart';

class counterPage extends StatefulWidget {
  const counterPage({Key? key}) : super(key: key);

  @override
  State<counterPage> createState() => _counterPageState();
}

class _counterPageState extends State<counterPage> {
  int _sayac = 0;

  void sayacArttir() {
    setState(() {
      _sayac++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: TextTheme(
          headline1:
              TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("CounterApp"),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (() {
              sayacArttir();
            }),
            child: Icon(
              Icons.add,
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Butona basılma mikrarı",
                  style: TextStyle(fontSize: 25),
                ),
                Text(_sayac.toString(),
                    style: Theme.of(context).textTheme.headline1),
              ],
            ),
          )),
    );
  }
}
