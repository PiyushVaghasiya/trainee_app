import 'dart:math';

import 'package:flutter/material.dart';

class Design2 extends StatefulWidget {
  const Design2({Key? key}) : super(key: key);

  @override
  _Design2State createState() => _Design2State();
}

class _Design2State extends State<Design2> with SingleTickerProviderStateMixin {
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
        body: Transform.rotate(angle: pi/10,
          child: Stack(
            children: [
              Positioned(
                child: Container(height: 200,width: 200,
                  margin: EdgeInsets.all(20),
                  color: Colors.blue,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
                margin: EdgeInsets.all(50),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.menu,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
