import 'package:flutter/material.dart';

class Dialogdemo extends StatefulWidget {
  const Dialogdemo({Key? key}) : super(key: key);

  @override
  _DialogdemoState createState() => _DialogdemoState();
}

class _DialogdemoState extends State<Dialogdemo>
    with SingleTickerProviderStateMixin {
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
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                barrierDismissible: true,
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    child: Container(
                      height: 300,
                      width: 200,
                      color: Colors.blue,

                    ),
                  );
                });
          },
          child: Text(
            "click here",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
