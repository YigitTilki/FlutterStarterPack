import 'package:flutter/material.dart';

class lVLProblems extends StatefulWidget {
  const lVLProblems({Key? key}) : super(key: key);

  @override
  State<lVLProblems> createState() => _lVLProblemsState();
}

class _lVLProblemsState extends State<lVLProblems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Layout Problems"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("Başladı"),
            Expanded( //columdaki boşluğa yayıılması için gerekkli
              child: ListView(
                shrinkWrap: true, //çocukların yüksekliği kadar yer kaplar
                children: [
                  Container(
                    height: 200,
                    color: Colors.orange[400],
                  ),
                  Container(
                    height: 200,
                    color: Colors.orange[700],
                  ),
                  Container(
                    height: 200,
                    color: Colors.orange[400],
                  ),
                  Container(
                    height: 200,
                    color: Colors.orange[700],
                  ),
                  Container(
                    height: 200,
                    color: Colors.orange[400],
                  ),
                  Container(
                    height: 200,
                    color: Colors.orange[700],
                  ),
                ],
              ),
            ),
            Text("Bitti"),
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(width: 4, color: Colors.red),
        ),
      ),
    );
  }
}
