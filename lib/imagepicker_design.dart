import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled/Constants/color.dart';

class ImagePickerDesign extends StatefulWidget {
  const ImagePickerDesign({Key? key}) : super(key: key);

  @override
  _ImagePickerDesignState createState() => _ImagePickerDesignState();
}

class _ImagePickerDesignState extends State<ImagePickerDesign> {
  String? image;
  ImagePicker pickimage = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "First Name",
                        style: TextStyle(color: Ccolor.black),
                      ),
                      Text(
                        "John",
                        style: TextStyle(
                            color: Ccolor.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Last Name",
                          style: TextStyle(color: Ccolor.black),
                        ),
                        Text(
                          "Cena",
                          style: TextStyle(
                              color: Ccolor.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email Address",
                      style: TextStyle(color: Ccolor.black, fontSize: 13),
                    ),
                    Text(
                      "johncena@gmail.com",
                      style: TextStyle(
                          color: Ccolor.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mobile Number",
                      style: TextStyle(color: Ccolor.black, fontSize: 13),
                    ),
                    Text(
                      "010 123 4567",
                      style: TextStyle(
                          color: Ccolor.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
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
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black, width: 2)),
                child: Text(
                  "Logout",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
