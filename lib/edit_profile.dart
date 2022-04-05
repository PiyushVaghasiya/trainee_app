import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:untitled/instagram/profile.dart';

class Edit_profile extends StatefulWidget {
  const Edit_profile({Key? key}) : super(key: key);

  @override
  _Edit_profileState createState() => _Edit_profileState();
}

class _Edit_profileState extends State<Edit_profile>
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
    return SafeArea(
      child: Scaffold(resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Profile()));
                      },
                      icon: const Icon(
                        Icons.cancel_outlined,
                        color: Colors.white,
                        size: 33,
                      )),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        "Edit Profile",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.save_alt,
                        color: Colors.white,
                        size: 30,
                      )),
                ],
              ),
              Container(
                height: 160,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/profile.jpg"),
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Text(
                      "Change profile photo",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    )
                  ],
                ),
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    style: TextStyle(color: Colors.white),
                    validator: RequiredValidator(errorText: "required"),
                    decoration: InputDecoration(
                      labelText: "Name",
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 12),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    style: TextStyle(color: Colors.white),
                    validator: RequiredValidator(errorText: "required"),
                    decoration: InputDecoration(
                      labelText: "User Name",
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 12),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    style: TextStyle(color: Colors.white),
                    validator: RequiredValidator(errorText: "required"),
                    decoration: InputDecoration(
                      labelText: "Website",
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 12),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    style: TextStyle(color: Colors.white),
                    validator: RequiredValidator(errorText: "required"),
                    decoration: InputDecoration(
                      labelText: "Bio",
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 12),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.grey, width: 0.2),
                      bottom: BorderSide(color: Colors.grey, width: 0.2)),
                ),
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 30, bottom: 30),
                child: Text(
                  "Switch to Professional account",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue, fontSize: 17),
                ),
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.grey, width: 0.2),
                      bottom: BorderSide(color: Colors.grey, width: 0.2)),
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Personal information settings",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue, fontSize: 17),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
