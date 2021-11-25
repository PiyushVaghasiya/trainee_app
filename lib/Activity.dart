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
        title: Text(
          "Activity",
          style: TextStyle(
            color: Colors.white,
          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.vectorstock.com/i/thumb-large/94/38/avatar-flat-icon-on-black-background-black-style-vector-25959438.jpg")),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1)),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Follow requests",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Approve or ignore requests",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10,
                top: 10,
                bottom: 10,
              ),
              child: Text(
                "Today",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1)),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                              children: [
                                TextSpan(
                                  text: "||__mr.nik__||",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      " commented on a post that you're tagged in :",
                                ),
                                WidgetSpan(
                                  child: Icon(
                                    Icons.local_fire_department,
                                    color: Colors.yellow,
                                    size: 20,
                                  ),
                                ),
                                WidgetSpan(
                                  child: Icon(
                                    Icons.local_fire_department,
                                    color: Colors.yellow,
                                    size: 20,
                                  ),
                                ),
                                WidgetSpan(
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                ),
                                WidgetSpan(
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                  " 1d",style: TextStyle(color: Colors.grey),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  margin: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR10hkHFV6UitNs7ArQUbAmJGZtn-NIzXPPLRgUq7K-4zt6DcgeSaUzgCaLh49iMx4MN4c&usqp=CAU")),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
