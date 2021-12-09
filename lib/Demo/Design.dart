import 'package:flutter/material.dart';

class Design extends StatefulWidget {
  const Design({Key? key}) : super(key: key);

  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> with SingleTickerProviderStateMixin {
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
                    height: 50,
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
                    height: 50,
                    margin: EdgeInsets.only(right: 10),
                    child: IconButton(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.add_circle_outlined,
                        color: Colors.white,
                        size: 50,
                      ),
                      onPressed: () {
                        // do something
                      },
                    ),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    "Dynamic Warmup",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
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
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 20),
                              transformAlignment: Alignment.center,
                              height: 230,
                              width: 300,
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
                              margin: EdgeInsets.only(left: 10, top: 20),
                              transformAlignment: Alignment.center,
                              height: 230,
                              width: 300,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/trainer.png"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              margin: EdgeInsets.only(left: 50, bottom: 5),
                              alignment: Alignment.center,
                              height: 100,
                              width: 100,
                              child: Text(
                                "start",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 90, bottom: 5),
                              alignment: Alignment.center,
                              color: Colors.blue,
                              height: 100,
                              width: 100,
                              child: Text(
                                "start",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                              margin: EdgeInsets.only(left: 50),
                              alignment: Alignment.center,
                              color: Colors.black,
                              height: 100,
                              width: 100,
                              child: Text(
                                "start",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 90),
                              alignment: Alignment.center,
                              color: Colors.blue,
                              height: 100,
                              width: 100,
                              child: Text(
                                "start",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
