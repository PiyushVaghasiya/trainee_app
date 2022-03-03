import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/Constants/color.dart';
import 'imagepicker_design_page2.dart';
import 'models/imagepicker_design_model.dart';

class ImagePickerDesign extends StatefulWidget {
  const ImagePickerDesign({Key? key}) : super(key: key);

  @override
  _ImagePickerDesignState createState() => _ImagePickerDesignState();
}

class _ImagePickerDesignState extends State<ImagePickerDesign> {
  late SharedPreferences sharedPreferences;

  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();

  String? image;
  ImagePicker pickimage = ImagePicker();
  String? images;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSavedData();
  }

  getSavedData() async {
    sharedPreferences = await SharedPreferences.getInstance();
    Map<String, dynamic> jsondatais =
        jsonDecode(sharedPreferences.getString('userdata')!);
    User user = User.fromJson(jsondatais);
    fname.value = TextEditingValue(text: user.Fname.toString());
    lname.value = TextEditingValue(text: user.Lname.toString());
    email.value = TextEditingValue(text: user.Email.toString());
    mobile.value = TextEditingValue(text: user.Mobile.toString());
    setState(() {
      image = user.Images;
    });
  }

  void storedata() {
    User user = User(fname.text, lname.text, email.text, mobile.text, image);
    String userdata = jsonEncode(user);
    sharedPreferences.setString('userdata', userdata);
    print(userdata);
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
          ),
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
                                    "assets/images/trainer.png",
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
                              color: Ccolor.black, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {
                            showDialog(
                              barrierDismissible: true,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      AlertDialog(
                                        backgroundColor: Colors.white,
                                        actions: [
                                          Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    width: double.infinity,
                                                    height: 40,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                            bottom: BorderSide(
                                                                color: Colors
                                                                    .black12,
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
                                                            source: ImageSource
                                                                .gallery);
                                                    setState(() {
                                                      image = fileImage?.path;
                                                    });
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                                InkWell(
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    width: double.infinity,
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
                                                        await pickimage
                                                            .pickImage(
                                                                source:
                                                                    ImageSource
                                                                        .camera);
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
                                                            BorderRadius
                                                                .circular(5)),
                                                    width: 280,
                                                    alignment: Alignment.center,
                                                    height: 40,
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
                                          )
                                        ],
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
                height: 30,
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
                height: 30,
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
                height: 30,
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Text(
                    "Login",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                onTap: () async {
                  storedata();

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ImagePickerUpdate()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
