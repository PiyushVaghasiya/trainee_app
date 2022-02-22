import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/Shared%20Preferences/sharedpreferences_login.dart';

class Sharedpreferences_home extends StatefulWidget {
  const Sharedpreferences_home({Key? key}) : super(key: key);

  @override
  _Sharedpreferences_homeState createState() => _Sharedpreferences_homeState();
}

class _Sharedpreferences_homeState extends State<Sharedpreferences_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello"),
            MaterialButton(

              child: Text("remove "),
              color: Colors.lightBlue,
              onPressed: () async{
                final  SharedPreferences sharedPreferences =
                await SharedPreferences.getInstance();
                sharedPreferences.remove('email');
                Get.to(Sharedpreferences_login());
              },
            ),
          ],
        ),
      ),
    );
  }
}
