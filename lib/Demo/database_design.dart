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
    db = DatabaseHelper();

    getData2();
  }

  void getData2() async {
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
        child: Icon(Icons.add),
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
                          keyboardType: TextInputType.number,
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
                    ElevatedButton(
                      onPressed: () {
                        // DataModel dataLocal = DataModel(
                        //   Name: nameController.text,
                        //   Age: ageController.hashCode,
                        //   Standard: standardController.hashCode,
                        // );
                        // print(dataLocal);
                        // db.insertData(dataLocal);
                        // dataLocal.Id =
                        //     ([datas[datas.length - 1].Id! + 1]) as int?;
                        // setState(() {
                        //   datas.add(dataLocal);
                        // });

                        db.insertData(
                          DataModel(
                            Name: nameController.text,
                            Standard: standardController.hashCode,
                            Age: ageController.hashCode,
                          ),
                        );
                        nameController.clear();
                        ageController.clear();
                        standardController.clear();
                        Navigator.pop(context);
                        getData2();
                      },
                      child: Text("Save"),
                    ),
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
                return DataTable(columns: [
                  DataColumn(label: Text("Id")),
                  DataColumn(label: Text("Name")),
                  DataColumn(label: Text("Age")),
                  DataColumn(label: Text("Standard")),
                ], rows: [
                  DataRow(cells: [
                    DataCell(
                      Text(datas[index].Id.toString()),
                    ),
                    DataCell(
                      Text(datas[index].Name.toString()),
                    ),
                    DataCell(
                      Text(datas[index].Age.toString()),
                    ),
                    DataCell(
                      Text(datas[index].Standard.toString()),
                    ),
                  ]),
                ]);
              }),
    );
  }
}
