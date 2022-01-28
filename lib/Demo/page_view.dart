import 'package:flutter/material.dart';

class PageviewDemo extends StatefulWidget {
  const PageviewDemo({Key? key}) : super(key: key);

  @override
  _PageviewDemoState createState() => _PageviewDemoState();
}

class _PageviewDemoState extends State<PageviewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          children: [
            Container(
              height: 200,
              width: 200,
              alignment: Alignment.center,
              color: Colors.red,
              child: Text("abcd"),
            ),
            Container(
              alignment: Alignment.center,
              height: 200,
              width: 200,
              color: Colors.blue,
              child: Text("abcd"),
            ),
          ],
        ),
      ),
    );
  }
}
