import 'package:flutter/material.dart';
import 'package:starterpack/List&Scroll/Example2/classStudent.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

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
      body: listViewSeperated(),
    );
  }

  ListView listViewSeperated() {
    return ListView.separated(
      //listViewSeperated ile liste oluşturma
      itemBuilder: (BuildContext context, int index) {
        var student = allStudents[index];
        return Card(
          color: index % 2 == 0 ? Colors.pink.shade300 : Colors.yellow.shade700,
          child: ListTile(
            onTap: () {
              EasyLoading.showToast("OKEY"); //easyLoading paketi ekledik
            },
            onLongPress: () {
              _alertDialoag(context, student);
            },
            title: Text(student.name),
            subtitle: Text(student.surName),
            leading: CircleAvatar(
              child: Text(
                student.id.toString(),
              ),
            ),
          ),
        );
      },
      itemCount: allStudents.length,
      separatorBuilder: (context, index) {
        //elemanların arasına ne geleceğini ayarlar
        var newIndex = index + 1;
        if (newIndex % 4 == 0) {
          return Divider(
            thickness: 2,
            color: Colors.purple.shade700,
          );
        }
        return SizedBox();
      },
    );
  }

  ListView listViewBuilder() {
    //listViewBuilder ile liste oluşturma
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        var student = allStudents[index];
        return Card(
          color: index % 2 == 0 ? Colors.teal : Colors.green,
          child: ListTile(
            title: Text(student.name),
            subtitle: Text(student.surName),
            leading: CircleAvatar(
              child: Text(
                student.id.toString(),
              ),
            ),
          ),
        );
      },
      itemCount: allStudents.length,
    );
  }

  ListView classicListView() {
    //listView ile liste oluşturma
    return ListView(
      children: allStudents
          .map((Student student) => ListTile(
                title: Text(student.name),
                subtitle: Text(student.surName),
                leading: CircleAvatar(
                  child: Text(student.id.toString()),
                ),
              ))
          .toList(),
    );
  }

  void _alertDialoag(BuildContext myContext, Student selected) {
    showDialog(
      barrierDismissible: false,
      context: myContext,
      builder: (context) {
        return AlertDialog(
          title: Text(selected.toString()), //başlık
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                //listBody alt alta göstermeye yarar
                Text("Yiğit1"),
                Text("Yiğit2"),
                Text("Yiğit3"),
              ],
            ),
          ),
          actions: [
            ButtonBar(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("CLOSE"),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("OPEN"),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
