import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/imagepicker_design.dart';
import 'Constants/color.dart';
import 'models/imagepicker_design_model.dart';

class ImagePickerUpdate extends StatefulWidget {
  const ImagePickerUpdate({Key? key}) : super(key: key);

  @override
  _ImagePickerUpdateState createState() => _ImagePickerUpdateState();
}

class _ImagePickerUpdateState extends State<ImagePickerUpdate> {
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();
  String? image;

  ImagePicker pickimage = ImagePicker();
  late SharedPreferences logindata;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSavedData();
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
  }

  getSavedData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    Map<String, dynamic> jsondatais =
        jsonDecode(preferences.getString('userdata')!);
    User user = User.fromJson(jsondatais);
    fname.value = TextEditingValue(text: user.Fname.toString());
    lname.value = TextEditingValue(text: user.Lname.toString());
    email.value = TextEditingValue(text: user.Email.toString());
    mobile.value = TextEditingValue(text: user.Mobile.toString());
    setState(() {
      image = user.Images;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffE5E4E2),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Profile", style: TextStyle(color: Colors.white)),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.edit,
              color: Colors.grey,
              size: 30,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    image != null && image!.isNotEmpty
                        ? CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 50,
                            child: ClipOval(
                              child: Image.file(
                                File(image ?? ""),
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        : Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/profile.jpg",
                                  ),
                                ),
                                shape: BoxShape.circle),
                          ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "John Cena",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 125,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                      color: Colors.black12,
                                                      width: 0.8))),
                                          child: Text(
                                            "Photo Gallery",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 17),
                                          ),
                                        ),
                                        onTap: () async {
                                          final fileImage =
                                          await pickimage.pickImage(
                                              source: ImageSource.gallery);
                                          setState(() {
                                            image = fileImage?.path;
                                          });
                                          Navigator.pop(context);
                                        },
                                      ),
                                      InkWell(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                      color: Colors.black12,
                                                      width: 0.8))),
                                          alignment: Alignment.center,
                                          // width: double.infinity,
                                          height: 40,
                                          child: Text(
                                            "Camera",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 17),
                                          ),
                                        ),
                                        onTap: () async {
                                          final fileImage =
                                          await pickimage.pickImage(
                                              source: ImageSource.camera);
                                          setState(() {
                                            image = fileImage?.path;
                                          });
                                          Navigator.pop(context);
                                        },
                                      ),
                                      InkWell(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(5)),
                                          alignment: Alignment.center,

                                          child: Text(
                                            "Cancel",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 17),
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          icon: Icon(
                            Icons.camera_alt_outlined,
                            color: Ccolor.black,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 150,
                    child: TextFormField(
                      controller: fname,
                      autovalidateMode: AutovalidateMode.always,
                      decoration: InputDecoration(
                        labelText: "First Name",
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 150,
                    child: TextFormField(
                      controller: lname,
                      autovalidateMode: AutovalidateMode.always,
                      decoration: InputDecoration(
                        labelText: "Last Name",
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 60,
                  width: 200,
                  child: TextFormField(
                    controller: email,
                    autovalidateMode: AutovalidateMode.always,
                    decoration: InputDecoration(
                      labelText: "Email Address",
                      labelStyle: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 60,
                  width: 200,
                  child: TextFormField(
                    controller: mobile,
                    autovalidateMode: AutovalidateMode.always,
                    decoration: InputDecoration(
                      labelText: "Mobile Number",
                      labelStyle: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 0.8, color: Ccolor.grey),
                        top: BorderSide(width: 0.8, color: Ccolor.grey))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Terms of Service",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Ccolor.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Ccolor.black,
                      size: 30,
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(width: 0.8, color: Ccolor.grey),
                )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "App Support",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Ccolor.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Ccolor.black,
                      size: 30,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black, width: 2)),
                      child: Text(
                        "Logout",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    onTap: () {
                      remove();
                      logindata.setBool('login', true);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ImagePickerDesign()));
                    },
                  ),
                  InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black, width: 2)),
                      child: Text(
                        "Update",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    onTap: () {
                      storedata();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ImagePickerUpdate()));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> storedata() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    User user = User(fname.text, lname.text, email.text, mobile.text, image);
    String userdata = jsonEncode(user);
    preferences.setString('userdata', userdata);
  }

  Future<void> remove() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    User user = User(fname.text, lname.text, email.text, mobile.text, image);
    String userdata = jsonEncode(user);
    preferences.remove('userdata');
    print(userdata);
  }
}
