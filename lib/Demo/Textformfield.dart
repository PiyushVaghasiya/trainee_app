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
  FocusNode emailNode = FocusNode();
  TextEditingController emailController = TextEditingController();
  String val = "";

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
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red)),
                        hintText: "search",
                        labelText: "search",
                        hintStyle:
                            TextStyle(color: Colors.green, fontSize: 15)),
                    validator: (value) {
                      bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value ?? "");
                      if (!emailValid) {
                        return "invalid email";
                      }
                    },
                    onChanged: (value) {
                      setState(() {
                        val = value;
                        print(val);
                      });
                    },
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          FocusScope.of(context).unfocus();
                        }
                      },
                      child: Text(
                        "Save",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                  Padding(
                    padding: EdgeInsets.all(20),
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
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        fillColor: Colors.yellow,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 20,
                        ),
                        labelText: "Search",
                        labelStyle:
                            TextStyle(color: Colors.grey, fontSize: 15)),
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
