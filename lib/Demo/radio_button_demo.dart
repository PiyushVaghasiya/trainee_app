import 'package:flutter/material.dart';

class RadioButtonDemo extends StatefulWidget {
  const RadioButtonDemo({Key? key}) : super(key: key);

  @override
  _RadioButtonDemoState createState() => _RadioButtonDemoState();
}

class _RadioButtonDemoState extends State<RadioButtonDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  String gender = "male";

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
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Radio(
                    value: "male",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value as String;
                      });
                    },
                  ),
                  Text("Male"),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: "female",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value as String;
                      });
                    },
                  ),
                  Text("feMale"),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: "other",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value as String;
                      });
                    },
                  ),
                  Text("other"),
                ],
              ),
              InkWell(
                child: Container(
                  height: 50,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Text(
                    "click here",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                onTap: () {
                  print("click : $gender");
                },
              ),
              Row(
                children: [
                  Radio(
                    value: "unknown",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value as String;
                      });
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
