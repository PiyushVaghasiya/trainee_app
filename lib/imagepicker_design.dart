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
        child: Column(
          children: [
            Container(
              color: Ccolor.red,
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Column(
                children: [
                  image != null && image!.isNotEmpty
                      ? ClipOval(
                          child: Image.file(
                            File(image ?? ""),
                            height: 100,
                            width: 100,
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
                                                      await pickimage.pickImage(
                                                          source: ImageSource
                                                              .camera);
                                                  setState(() {
                                                    image = fileImage?.path;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      width: 280,
                                      alignment: Alignment.center,
                                      height: 40,
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: 17),
                                      ),
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
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
