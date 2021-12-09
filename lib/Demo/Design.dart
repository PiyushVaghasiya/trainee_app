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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 45,
                  height: 50,
                  margin: EdgeInsets.only(left: 20),
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
                color: Colors.blue,
                margin: EdgeInsets.only(left: 20, top: 20),
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
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
