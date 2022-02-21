import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:untitled/Shared%20Preferences/sharedpreferences_home.dart';

class Sharedpreferences_login extends StatefulWidget {
  const Sharedpreferences_login({Key? key}) : super(key: key);

  @override
  _Sharedpreferences_loginState createState() =>
      _Sharedpreferences_loginState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _Sharedpreferences_loginState extends State<Sharedpreferences_login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red)),
                      hintText: "Enter email",
                      hintStyle: TextStyle(color: Colors.green, fontSize: 15)),
                  validator: MultiValidator([
                    RequiredValidator(errorText: "required"),
                    EmailValidator(errorText: "enter valid email"),
                  ]),
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  textInputAction: TextInputAction.search,
                  controller: passwordController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red)),
                      hintText: "password",
                      hintStyle: TextStyle(color: Colors.green, fontSize: 15)),
                  validator: MultiValidator([
                    RequiredValidator(errorText: "required"),
                  ]),
                ),
                ElevatedButton(
                    onPressed: () async {
                      final SharedPreferences sharedPreferences =
                          await SharedPreferences.getInstance();
                      sharedPreferences.setString(
                          'email', emailController.text);
                      Get.to(Sharedpreferences_home());
                    },
                    child: Text("submit")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
