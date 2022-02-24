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
  late SharedPreferences logindata;
  String? username;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello $username"),
            MaterialButton(
              child: Text("logout "),
              color: Colors.lightBlue,
              onPressed: () async {
                logindata.setBool('login', true);

                Get.to(Sharedpreferences_login());
              },
            ),
          ],
        ),
      ),
    );
  }
}
