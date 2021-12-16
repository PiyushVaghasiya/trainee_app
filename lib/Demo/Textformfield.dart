import 'package:flutter/material.dart';

class Textformfield_demo extends StatefulWidget {
  const Textformfield_demo({Key? key}) : super(key: key);

  @override
  _Textformfield_demoState createState() => _Textformfield_demoState();
}

class _Textformfield_demoState extends State<Textformfield_demo>
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

  final formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red)),
                        hintText: "search",
                        labelText: "ssearch",
                        hintStyle:
                            TextStyle(color: Colors.green, fontSize: 15)),
                  ),
                  Padding(padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                          helperText: "name plzzz",
                          border: OutlineInputBorder(),
                          labelText: "user name"),
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
