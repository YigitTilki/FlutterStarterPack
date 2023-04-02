import 'package:flutter/material.dart';
import 'card.dart';

class Card_ListTile extends StatefulWidget {
  const Card_ListTile({Key? key}) : super(key: key);

  @override
  State<Card_ListTile> createState() => _Card_ListTileState();
}

class _Card_ListTileState extends State<Card_ListTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CardListTile"),
      ),
      body: Center(
        child: SingleChildScrollView( //kaydırma fonksiyonu
          child: Column(
            children: [
              listElement("NemesisCran", "Yiğit"),
              listElement("NemesisCran", "Yiğit"),
              listElement("NemesisCran", "Yiğit"),
              listElement("NemesisCran", "Yiğit"),
              listElement("NemesisCran", "Yiğit"),
              listElement("NemesisCran", "Yiğit"),
              listElement("NemesisCran", "Yiğit"),
              listElement("NemesisCran", "Yiğit"),
            ],
          ),
        ),
      ),
    );
  }
}
