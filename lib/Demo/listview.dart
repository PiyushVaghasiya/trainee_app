import 'package:flutter/material.dart';
import 'package:untitled/models/employee.dart';

class ListviewDemo extends StatefulWidget {
  const ListviewDemo({Key? key}) : super(key: key);

  @override
  _ListviewDemoState createState() => _ListviewDemoState();
}

class _ListviewDemoState extends State<ListviewDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // List<String> name = ["piyush", "dishant", "abc"];

    List<Employee> employeelist = [
      Employee(name: "piyush", married: true, salary: 1000),
      Employee(name: "dishant", married: true, salary: 1000),
      Employee(name: "abc", married: true, salary: 1000),
      Employee(name: "def", married: true, salary: 12200),
      Employee(name: "ghi", married: false, salary: 1000),
      Employee(name: "jkl", married: true, salary: 1400),
      Employee(name: "mno", married: false, salary: 9000),
    ];

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: 300,
                height: 100,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: List.generate(
                    employeelist.length,
                    (index) => Container(
                        alignment: Alignment.center,
                        height: 200,
                        width: 200,
                        margin:
                            EdgeInsets.only(bottom: 10, left: 10, right: 10),
                        color: Colors.blue.shade50,
                        child: Column(
                          children: [
                            Text(employeelist[index].name ?? ""),
                            Text(employeelist[index].salary.toString()),
                            Text("married :${employeelist[index].married}"),
                          ],
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
