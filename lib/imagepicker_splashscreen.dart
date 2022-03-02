import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'imagepicker_design.dart';
import 'imagepicker_design_page2.dart';
import 'models/imagepicker_design_model.dart';

class ImagePickerSplashScreen extends StatefulWidget {
  const ImagePickerSplashScreen({Key? key}) : super(key: key);

  @override
  _ImagePickerSplashScreenState createState() =>
      _ImagePickerSplashScreenState();
}

class _ImagePickerSplashScreenState extends State<ImagePickerSplashScreen> {
  late Timer timer;
  String? logindata;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              (logindata == null ? ImagePickerDesign() : ImagePickerUpdate()),
        ),
      ),
    );
  }

  void GetSavedData() async {
    var sharedPreferences = await SharedPreferences.getInstance();
    Map<String, dynamic> jsondatais =
        jsonDecode(sharedPreferences.getString('userdata')!);
    User user = User.fromJson(jsondatais);
    setState(() {
       user = logindata as User;
    });
  }

  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 80),
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
