import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Sharedpreferences_login extends StatefulWidget {
  const Sharedpreferences_login({Key? key}) : super(key: key);

  @override
  _Sharedpreferences_loginState createState() =>
      _Sharedpreferences_loginState();
}

TextEditingController emailController = TextEditingController();

class _Sharedpreferences_loginState extends State<Sharedpreferences_login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
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
                    hintText: "search",
                    labelText: "search",
                    hintStyle: TextStyle(color: Colors.green, fontSize: 15)),
                validator: MultiValidator([
                  RequiredValidator(errorText: "required"),
                  EmailValidator(errorText: "enter valid email"),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
