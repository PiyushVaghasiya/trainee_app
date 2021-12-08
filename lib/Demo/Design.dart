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
        body: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
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
                    icon: Icon(Icons.arrow_back, color: Colors.white),
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
                      size: 55,
                    ),
                    onPressed: () {
                      // do something
                    },
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
