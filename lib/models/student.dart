import '../Demo/dbhelper.dart';

class Student{
  int? Id;
  String? Name;
  int ? Age;
  int? Standard;

  Student(this.Id,this.Name,this.Age,this.Standard);

  // Student.fromMap(Map<String, dynamic> map) {
  //   Id = map['id'];
  //   Name = map['name'];
  //   Age = map['Age'];
  //   Standard=map['Standard'];
  // }
  // Map<String, dynamic> toMap() {
  //   return {
  //     DatabaseHelper.columnId: Id,
  //     DatabaseHelper.columnName: Name,
  //     DatabaseHelper.columnAge: Age,
  //     DatabaseHelper.columnStandard: Standard,
  //   };
  // }
}