import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/Shared%20Preferences/sharedpreferences_login.dart';

class Sharedpreferences_splashscreen extends StatefulWidget {
  const Sharedpreferences_splashscreen({Key? key}) : super(key: key);

  @override
  _Sharedpreferences_splashscreenState createState() =>
      _Sharedpreferences_splashscreenState();
}
String ? finalEmail;
class _Sharedpreferences_splashscreenState
    extends State<Sharedpreferences_splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 2), () => Get.to(Sharedpreferences_login()));
    super.initState();
  }
  Future getvalidationData() async{
    final SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    var obtainedEmail=sharedPreferences.getString('email');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
