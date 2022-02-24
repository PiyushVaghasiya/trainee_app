import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerDemo extends StatefulWidget {
  const ImagePickerDemo({Key? key}) : super(key: key);

  @override
  _ImagePickerDemoState createState() => _ImagePickerDemoState();
}

class _ImagePickerDemoState extends State<ImagePickerDemo> {
  String? image;
  ImagePicker pickimage = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              image != null && image!.isNotEmpty
                  ? Image.file(
                      File(image ?? ""),
                    )
                  : Image.asset("assets/images/trainer.png"),
              ElevatedButton(
                onPressed: () async {
                  final fileImage =
                      await pickimage.pickImage(source: ImageSource.gallery);
                  setState(() {
                    image = fileImage?.path;
                  });
                },
                child: Text("choose image"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
