import 'package:flutter/material.dart';

Column listElement(nickName,fullName) {
    return Column(
      children: [
        Card(
          color: Colors.blue.shade100,
          shadowColor: Colors.blue,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.add),
            ),
            title: Text(nickName),
            subtitle: Text(fullName),
            trailing: Icon(Icons.real_estate_agent),
          ),
        ),
        Divider(
          color: Colors.blueAccent,
          height: 10,
          thickness: 2,
          endIndent: 20,
          indent: 20,
        )
      ],
    );
  }