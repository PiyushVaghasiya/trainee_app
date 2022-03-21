import 'package:flutter/material.dart';
import 'package:untitled/Demo/dbdemo.dart';
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
                          keyboardType: TextInputType.number,
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
                            Standard: int.parse(standardController.text),
                            Age: int.parse(ageController.text),
                          ),
                        );
                        nameController.clear();
                        ageController.clear();
                        standardController.clear();
                        getData2();
                        Navigator.pop(context);
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
          : Container(
              child: Column(
                children: [
                  Container(
                    height: 60,
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 82,
                          alignment: Alignment.center,
                          child: Text(
                            "Id",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        Container(
                          width: 82,
                          alignment: Alignment.center,
                          child: Text(
                            "Name",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        Container(
                          width: 82,
                          alignment: Alignment.center,
                          child: Text(
                            "Age",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        Container(
                          width: 82,
                          alignment: Alignment.center,
                          child: Text(
                            "Standard",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: datas.length,
                        itemBuilder: (context, index) {
                          return Dismissible(
                            key: UniqueKey(),
                            background: Container(
                              padding: EdgeInsets.only(left: 20),
                              alignment: Alignment.centerLeft,
                              color: Colors.purple,
                              child: Text("ARCHIVE"),
                            ),
                            secondaryBackground: Container(
                              padding: EdgeInsets.only(right: 20),
                              alignment: Alignment.centerRight,
                              color: Colors.red,
                              child: Text("DELETE"),
                            ),
                            onDismissed: (DismissDirection direction) {
                              String action =
                                  direction == DismissDirection.startToEnd
                                      ? "Archieve"
                                      : "Delete";
                              print(action);
                              db.delete(datas[index].Id!);
                              setState(() {
                                datas.removeAt(index);
                              });
                            },
                            child: Container(
                              color: Colors.blue.shade100,
                              height: 40,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      datas[index].Id.toString(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      datas[index].Name.toString(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      datas[index].Age.toString(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      datas[index].Standard.toString(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Container();
                                          },
                                      );
                                    },
                                    icon: Icon(Icons.edit_outlined),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
    );
  }
}
