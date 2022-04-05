import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/Shared%20Preferences/sharedpreferences_home.dart';
import 'package:untitled/Shared%20Preferences/sharedpreferences_login.dart';

class Sharedpreferences_splashscreen extends StatefulWidget {
  const Sharedpreferences_splashscreen({Key? key}) : super(key: key);

  @override
  _Sharedpreferences_splashscreenState createState() =>
      _Sharedpreferences_splashscreenState();
}

String? finalEmail;

class _Sharedpreferences_splashscreenState
    extends State<Sharedpreferences_splashscreen> {
  late Timer timer;

  @override
  void initState() {
    // TODO: implement initState
    getvalidationData().whenComplete(() async {
      Timer(
        Duration(seconds: 2),
        () => Get.to(finalEmail == null
            ? Sharedpreferences_login()
            : Sharedpreferences_home()),
      );
    });
  }

  void dispose() {
    timer.cancel();
    super.dispose();
  }

  Future getvalidationData() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var obtainedEmail = sharedPreferences.getString('email');
    setState(() {
      finalEmail = obtainedEmail;
    });
    print(finalEmail);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Icon(Icons.local_activity),
              radius: 50.0,
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
