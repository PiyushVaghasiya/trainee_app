import 'package:flutter/material.dart';
import 'package:untitled/models/employee.dart';

class ModelDemo extends StatefulWidget {
  const ModelDemo({Key? key}) : super(key: key);

  @override
  _ModelDemoState createState() => _ModelDemoState();
}

Employee employee = Employee();

class _ModelDemoState extends State<ModelDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                employee.name ?? "",
                style: TextStyle(color: Colors.red),
              ),
              Text((employee.salary ?? "").toString()),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Married :"),
                  Switch(
                      value: employee.married ?? false, onChanged: (value) {}),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    employee =
                        Employee(name: "piyush", salary: 100000, married: true);
                  });
                },
                child: Text("Piyush"),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    employee = Employee(
                        name: "dishant", salary: 100000, married: false);
                  });
                },
                child: Text("dishant"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
