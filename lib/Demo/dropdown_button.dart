import 'dart:ffi';

import 'package:flutter/material.dart';

class Dropdown_button extends StatefulWidget {
  const Dropdown_button({Key? key}) : super(key: key);

  @override
  _Dropdown_buttonState createState() => _Dropdown_buttonState();
}

class _Dropdown_buttonState extends State<Dropdown_button>
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

  String dropdownvalue = 'One';
  int dv = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            color: Colors.blue.shade100,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton(
                  onTap: () {
                    return print('111111');
                  },
                  iconSize: 20,
                  iconDisabledColor: Colors.blue.shade50,
                  itemHeight: 50,
                  iconEnabledColor: Colors.orange,
                  icon: Icon(Icons.arrow_downward_sharp),
                  dropdownColor: Colors.yellow.shade50,
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                  ),
                  focusColor: Colors.red,
                  autofocus: true,
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  value: dropdownvalue,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                  items: <String>['One', 'Two', 'Free', 'Four']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
