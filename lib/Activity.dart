import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/main.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Activity",
            style: TextStyle(
              color: Colors.white,
            ),textAlign: TextAlign.left,),
      ),
      body: Container(color: Colors.black,
        child: Column(
          children: [
            Row(
              children: [
               Container(height: 100,width: 100,
                 decoration: BoxDecoration(
                   image: DecorationImage(
                     image: NetworkImage("https://cdn.vectorstock.com/i/thumb-large/94/38/avatar-flat-icon-on-black-background-black-style-vector-25959438.jpg")
                   ),
                 ),
               ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
