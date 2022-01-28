import 'package:flutter/material.dart';

class PageviewDemo2 extends StatefulWidget {
  const PageviewDemo2({Key? key}) : super(key: key);

  @override
  _PageviewDemo2State createState() => _PageviewDemo2State();
}

class _PageviewDemo2State extends State<PageviewDemo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        width: 300,
                        height: 300,
                        color: Colors.red.shade200,
                        alignment: Alignment.center,
                        child: Text("123"),
                      ),
                      Container(
                        width: 300,
                        height: 300,
                        color: Colors.blue.shade200,
                        alignment: Alignment.center,
                        child: Text("123"),
                      ),
                    ],
                  );
                }),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
