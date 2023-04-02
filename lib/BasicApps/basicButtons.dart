import 'package:flutter/material.dart';

class BasicButtons extends StatelessWidget {
  const BasicButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Text("Text Button"),
          style: TextButton.styleFrom(
            primary: Colors.red,
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("TextButtonWithIcon"),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("ElevatedButton"),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          onLongPress: () {
            print("LongPress");
          },
          icon: Icon(Icons.add),
          label: Text("ElevatedWithIcon"),
          style: ElevatedButton.styleFrom(
            primary: Colors.purple,
            onPrimary: Colors.pink[200],
            shadowColor: Colors.red,
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text("OutlinedButton"),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("OutlinedWithIcon"),
          style: OutlinedButton.styleFrom(
            shape: StadiumBorder(),
            primary: Colors.purple,
            side: BorderSide(
              color: Colors.purple,
              width: 2,
            ),
          ),
        ),
      ],
    );
  }
}
