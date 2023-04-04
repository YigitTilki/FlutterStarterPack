class Student {
  final int id;
  final String name;
  final String surName;

  Student(this.id, this.name, this.surName);

  @override
  String toString() {
    return "Isım : $name Soyisim : $surName id : $id";
  }
}
