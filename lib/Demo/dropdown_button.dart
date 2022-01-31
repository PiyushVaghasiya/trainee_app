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

  List<String> personList = ["piyush", "dishant", "rakesh", "ayushi"];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: DropdownButton(
            iconEnabledColor: Colors.black,
            icon: Icon(Icons.arrow_downward_sharp),
            dropdownColor: Colors.blue.shade50,
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
            autofocus: true,
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            value: selectedValue,
            items: personList
                .map(
                  (String e) => DropdownMenuItem(
                    child: Text(e),
                    value: e,
                  ),
                )
                .toList(),
            onChanged: (value) {
              setState(() {
                selectedValue = value as String;
              });
            },
            hint: Text(
              "select anyone",
              style: TextStyle(color: Colors.green),
            ),
            focusColor: Colors.greenAccent,
          ),
        ),
      ),
    );
  }
}
