class Employee {
  String? name;
  int? salary;
  bool? married;
  int? age;

  Employee({this.name, this.salary, this.married, this.age});
}

class Student {
  String? name;
  int? rollno;
  int? marks;

  Student({this.name, this.rollno, this.marks});
}

List<Student> studdata = [
  Student(name: "abc", marks: 90, rollno: 10),
  Student(name: "def", marks: 70, rollno: 11),
  Student(name: "xyz", marks: 80, rollno: 12),
];
