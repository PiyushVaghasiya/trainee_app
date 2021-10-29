import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
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
      body: Container(
        margin: EdgeInsets.only(top: 20),
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.lock_open,
                  color: Colors.white,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "piyush_2906_",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.add_box_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/profile.jpg")),
                      shape: BoxShape.circle),
                ),
                Column(
                  children: [
                    Text(
                      "5",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text(
                      "Posts",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "490",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      "Followers",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "535",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text(
                      "Following",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              color: Colors.black,
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Piyush Vaghasiya",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.emoji_people_rounded,
                        color: Colors.blue,
                      ),
                      Icon(
                        Icons.emoji_emotions,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.wb_sunny,
                        color: Colors.yellow,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5, right: 5),
                        child: Text(
                          "Heliophile",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Icon(
                        Icons.wb_sunny,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.music_note,
                        color: Colors.blue,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5, right: 5),
                        child: Text(
                          "Music",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.music_note,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
