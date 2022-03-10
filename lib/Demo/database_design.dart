import 'package:flutter/material.dart';

import 'database.dart';

class DatabaseDesign extends StatefulWidget {
  const DatabaseDesign({Key? key}) : super(key: key);

  @override
  _DatabaseDesignState createState() => _DatabaseDesignState();
}

class _DatabaseDesignState extends State<DatabaseDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("database design"),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.topRight,
          child: Container(
            height: 50,
            width: 50,
            child: ElevatedButton(
                child: Icon(Icons.add),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DatabaseDemo()));
                }),
          ),
        ),
      ),
    );
  }
}
