import 'dart:async';

import 'package:flutter/material.dart';

class Design extends StatefulWidget {
  const Design({Key? key}) : super(key: key);

  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool isvisible = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    Timer(Duration(seconds: 5), () {
      setState(() {
        isvisible = true;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final barColor = const Color(0xFF232121);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          margin: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 45,
                    height: 40,
                    margin: EdgeInsets.only(left: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.grey,
                            Colors.black,
                          ],
                          begin: FractionalOffset.topLeft,
                          end: FractionalOffset.bottomRight),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 40,
                    margin: EdgeInsets.only(right: 10),
                    child: IconButton(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.add_circle_outlined,
                        color: Colors.white,
                        size: 45,
                      ),
                      onPressed: () {
                        // do something
                      },
                    ),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    "Dynamic Warmup",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                  margin: EdgeInsets.only(left: 20, top: 5),
                  child: Text(
                    "Don't rush these exercises. Warmups improve performance,reduce risk of injury,and prepare you mentally",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  )),
              Stack(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Visibility(
                              visible: isvisible,
                              child: Container(
                                margin: EdgeInsets.only(left: 10, top: 10),
                                transformAlignment: Alignment.center,
                                height: 220,
                                width: 290,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/trainer.png"),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 5),
                              transformAlignment: Alignment.center,
                              height: 220,
                              width: 290,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/trainer.png"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 5),
                              transformAlignment: Alignment.center,
                              height: 220,
                              width: 290,
                              alignment: Alignment.center,
                              child: AspectRatio(aspectRatio:3/2,
                                child: Image(
                                  image: AssetImage("assets/images/taj.jpeg"),
                                ),
                              ),
                              // decoration: BoxDecoration(
                              //   image: DecorationImage(
                              //       image:
                              //       AssetImage("assets/images/trainer.png"),
                              //       fit: BoxFit.fill),
                              //   borderRadius: BorderRadius.circular(30),
                              // ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 180),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: barColor,
                                    borderRadius: BorderRadius.circular(20)),
                                margin: EdgeInsets.only(left: 60, bottom: 5),
                                alignment: Alignment.center,
                                height: 70,
                                width: 80,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.menu,
                                      color: Colors.white,
                                      size: 35,
                                    ),
                                    Text(
                                      "No Equipment",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ],
                                )),
                            Container(
                              margin: EdgeInsets.only(right: 100, bottom: 5),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: barColor,
                                  borderRadius: BorderRadius.circular(20)),
                              height: 70,
                              width: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                  Text(
                                    "Comfortable Pace",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: barColor,
                                  borderRadius: BorderRadius.circular(20)),
                              margin: EdgeInsets.only(left: 60),
                              alignment: Alignment.center,
                              height: 70,
                              width: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.watch_later_outlined,
                                    size: 35,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "4-5 min",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 100),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              height: 70,
                              width: 80,
                              child: Text(
                                "Start",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 10, bottom: 10),
                child: Text(
                  "Summary",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              Container(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20, bottom: 10),
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/trainer.png"),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Lunge Rotate",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    Text(
                      "12 x",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              Container(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20, bottom: 10),
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/trainer.png"),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Deep Squat Hold",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    Text(
                      "30 x",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              Container(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20, bottom: 10),
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/trainer.png"),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Knee Lifts",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    Text(
                      "12 x",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10)),
                width: 300,
                height: 45,
                child: Text(
                  "START YOUR JOURNEY",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
