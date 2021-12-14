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
  final gcolor = const Color(0xFAE9E9EE);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: 20, top: 35, bottom: 30),
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
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delicious Salads",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "We made fresh and Healthy food",
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(width:60,height: 30,alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Salads",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
                Container(width:60,height: 30,alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Soups",
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                ),
                Container(width:60,height: 30,alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Grilled",
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                ),
                Icon(
                  Icons.sort,
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
