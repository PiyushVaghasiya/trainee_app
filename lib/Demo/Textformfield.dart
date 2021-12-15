import 'package:flutter/material.dart';

class Textformfield extends StatefulWidget {
  const Textformfield({Key? key}) : super(key: key);

  @override
  _TextformfieldState createState() => _TextformfieldState();
}

class _TextformfieldState extends State<Textformfield>
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

  final key = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Column(
          children: [
            Form(
              key: key,
              child: Column(
                children: [Textformfield(
                )],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
