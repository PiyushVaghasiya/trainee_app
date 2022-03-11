import 'package:flutter/material.dart';
import 'package:untitled/Demo/dbhelper.dart';
import 'package:untitled/models/student.dart';

class DatabaseDesign extends StatefulWidget {
  const DatabaseDesign({Key? key}) : super(key: key);

  @override
  _DatabaseDesignState createState() => _DatabaseDesignState();
}

class _DatabaseDesignState extends State<DatabaseDesign> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController standardController = TextEditingController();
  List<DataModel> datas = [];
  bool fetching = true;

  late DatabaseHelper db;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    db = DatabaseHelper.instance;
    getData();
  }

  void getData() async {
    datas = await db.getData();
    setState(() {
      fetching = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("database design"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  contentPadding: EdgeInsets.all(10),
                  content: Container(
                    height: 300,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: nameController,
                          decoration: InputDecoration(labelText: "Name"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: ageController,
                          decoration: InputDecoration(labelText: "Age"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: standardController,
                          decoration: InputDecoration(labelText: "Standard"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        DataModel dataLocal = DataModel(
                          Name: nameController.text,
                          Age: ageController.hashCode,
                          Standard: standardController.hashCode,
                        );
                        db.insertData(dataLocal);
                        dataLocal.Id = datas[datas.length - 1].Id! + 1;
                        setState(() {
                          datas.add(dataLocal);
                        });
                        nameController.clear();
                        ageController.clear();
                        standardController.clear();
                        Navigator.pop(context);
                      },
                      child: Text("Save"),
                    )
                  ],
                );
              });
        },
      ),
      body: fetching
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: datas.length,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Text(datas[index].Id.toString()),
                      Text(datas[index].Name.toString()),
                      Text(datas[index].Age.toString()),
                      Text(datas[index].Standard.toString()),
                    ],
                  ),
                );
              }),
    );
  }
}
