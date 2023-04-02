import 'package:flutter/material.dart';
import 'package:starterpack/List&Scroll/Example2/classStudent.dart';

class listViewEx extends StatefulWidget {
  const listViewEx({Key? key}) : super(key: key);

  @override
  State<listViewEx> createState() => _listViewExState();
}

class _listViewExState extends State<listViewEx> {
  List<Student> allStudents = List.generate(
    500,
    (index) => Student(
        index + 1, "Student Name ${index + 1}", "Student surName ${index + 1}"),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student List"),
      ),
      body: ListView(
        children: allStudents
            .map((Student student) => ListTile(
                  title: Text(student.name),
                  subtitle: Text(student.surName),
                  leading: CircleAvatar(
                    child: Text(student.id.toString()),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
