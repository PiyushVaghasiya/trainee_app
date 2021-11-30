import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:untitled/Activity.dart';
import 'package:untitled/profile.dart';

class Reels extends StatefulWidget {
  const Reels({Key? key}) : super(key: key);

  @override
  _ReelsState createState() => _ReelsState();
}

class _ReelsState extends State<Reels> with SingleTickerProviderStateMixin {
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
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 10),
                      child: Text(
                        'Reels',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 305),
                      height: double.infinity,
                      width: 50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(top: 10),
                              child: Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Icon(
                              Icons.favorite_outline,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                "25.7k",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Icon(
                              Icons.mode_comment_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                "16",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Icon(
                              Icons.share,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://1.bp.blogspot.com/-qES8XCPCoMs/YPenPwxubUI/AAAAAAAAFdg/txOuXwSLWGQLT-QGAh98a-8m26UjMU9XQCLcBGAsYHQ/w640-h614/20210721_101605.jpg",
                                  ),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.rectangle,
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(10)),
                            height: 40,
                            width: 40,
                            margin: EdgeInsets.only(bottom: 20, top: 17),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.play_circle_outline,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Reels()));
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.favorite_border_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Activity()));
                    },
                  ),
                  InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/lake.png",
                            ),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                        height: 45,
                        width: 30,
                        margin: EdgeInsets.all(5),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Profile()));
                      }),
                ],
              ),
            ),
          ],
        ));
  }
}
