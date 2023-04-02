import 'package:flutter/material.dart';
import 'Lists/BasicColors.dart';

class PopupMenu extends StatefulWidget {
  const PopupMenu({Key? key}) : super(key: key);

  @override
  State<PopupMenu> createState() => _PopupMenuState();
}

class _PopupMenuState extends State<PopupMenu> {
  String _secilenRenk = "";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String renk) {
          print("Seçilen Renk: $renk");
          setState(() {
            _secilenRenk = renk;
          });
        },
        itemBuilder: (BuildContext context) {
          return colors
              .map(
                (String renk) => PopupMenuItem(
                  child: Text(renk),
                  value: renk,
                ),
              )
              .toList();
        },
      ),
    );
  }
}
