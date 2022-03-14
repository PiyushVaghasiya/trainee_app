import 'package:flutter/material.dart';
import 'package:untitled/Demo/dbhelper.dart';

class DatabaseDemo extends StatefulWidget {
  const DatabaseDemo({Key? key}) : super(key: key);

  @override
  _DatabaseDemoState createState() => _DatabaseDemoState();
}

class _DatabaseDemoState extends State<DatabaseDemo> {
  final dbhelper = DatabaseHelper();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  TextEditingController standardcontroller = TextEditingController();


  // void queryall() async {
  //   var allrows = await dbhelper.queryall();
  //   allrows?.forEach((row) {
  //     print(row);
  //   });
  // }
  //
  // void queryspecific() async {
  //   var allrows = await dbhelper.queryspecific(18);
  //   print(allrows);
  // }
  //
  // void delete() async {
  //   var id = await dbhelper.deletedata(4);
  //   print(id);
  // }
  //
  // void update() async {
  //   var row = await dbhelper.updatedata(3);
  //   print(row);
  // }

  void readdata() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: (){},
              child: Text("Query all"),
            ),
            ElevatedButton(
              onPressed: (){},
              child: Text("Query specific"),
            ),
            ElevatedButton(
              onPressed: (){},
              child: Text("Delete"),
            ),
            ElevatedButton(
              onPressed: (){},
              child: Text("Update"),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  TextFormField(
                    controller: namecontroller,
                    decoration: InputDecoration(hintText: "enter name"),
                  ),
                  TextFormField(
                    controller: agecontroller,
                    decoration: InputDecoration(hintText: "enter age"),
                  ),
                  TextFormField(
                    controller: standardcontroller,
                    decoration: InputDecoration(hintText: "enter standard"),
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("save")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
