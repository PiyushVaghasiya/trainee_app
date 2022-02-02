import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:flutter/cupertino.dart';
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

  List<String> personList = ["Piyush", "Dishant", "Rakesh", "Ayushi"];

  String? selectedValue;

  List dropdownItemList = [
    {
      'label': 'apple',
      'value': 'apple',
      'icon': Icon(Icons.settings_applications),
    }, // label is required and unique
    {
      'label': 'grape',
      'value': 'grape',
      'icon': Icon(Icons.umbrella_outlined),
    },
    {
      'label': 'pineapple',
      'value': 'pineapple',
      'icon': Icon(Icons.umbrella_outlined),
    },
    {
      'label': 'grape fruit',
      'value': 'grape fruit',
      'icon': Icon(Icons.umbrella_outlined),
    },
    {
      'label': 'kiwi',
      'value': 'kiwi',
      'icon': Icon(Icons.umbrella_outlined),
    },
    {
      'label': 'banana',
      'value': 'banana',
      'icon': Icon(Icons.umbrella_outlined),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            height: 150,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black),
                color: Colors.orange.shade200),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DropdownButtonHideUnderline(
                  child: DropdownButton(
                    iconEnabledColor: Colors.black,
                    icon: Icon(
                      Icons.arrow_downward_sharp,
                      size: 30,
                    ),
                    dropdownColor: Colors.blue.shade50,
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                    autofocus: true,
                    value: selectedValue,
                    items: personList
                        .map(
                          (String e) => DropdownMenuItem(
                            value: e,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(e),
                                e == selectedValue
                                    ? Icon(
                                        Icons.clear,
                                        color: Colors.green,
                                      )
                                    : Container(),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                    },
                    hint: Text(
                      "Select anyone",
                      style:
                          TextStyle(color: Colors.purpleAccent, fontSize: 15),
                    ),
                    focusColor: Colors.greenAccent,
                    selectedItemBuilder: (BuildContext context) {
                      return personList.map((item) {
                        return Text(
                          item,
                          style: TextStyle(fontSize: 15, color: Colors.black),
                          textAlign: TextAlign.justify,
                        );
                      }).toList();
                    },
                  ),
                ),
                CoolDropdown(
                  dropdownList: dropdownItemList,
                  onChange: (_) {},
                  defaultValue: dropdownItemList[3],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
