import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'imagepicker_design.dart';
import 'imagepicker_design_page2.dart';

class ImagePickerSplashScreen extends StatefulWidget {
  const ImagePickerSplashScreen({Key? key}) : super(key: key);

  @override
  _ImagePickerSplashScreenState createState() =>
      _ImagePickerSplashScreenState();
}

class _ImagePickerSplashScreenState extends State<ImagePickerSplashScreen> {
  late Timer timer;
  late bool newuser;
  late SharedPreferences logindata;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    check();
    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              (newuser == true ? ImagePickerDesign():ImagePickerUpdate()),
        ),
      ),
    );
  }

  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void check() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);
    print(newuser);
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
