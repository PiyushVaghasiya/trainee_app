import 'package:flutter/material.dart';
import 'package:untitled/Constants/color.dart';

class ImagePickerDesign extends StatefulWidget {
  const ImagePickerDesign({Key? key}) : super(key: key);

  @override
  _ImagePickerDesignState createState() => _ImagePickerDesignState();
}

class _ImagePickerDesignState extends State<ImagePickerDesign> {
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
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/Tree.webp"),
                            fit: BoxFit.cover),
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
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt_outlined,
                            color: Ccolor.black,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
