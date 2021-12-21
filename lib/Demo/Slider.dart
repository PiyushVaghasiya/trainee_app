import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen>
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

  double currentSliderval = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Center(
          child: Slider(
            mouseCursor: MaterialStateMouseCursor.textable,
            activeColor: Colors.black,
            inactiveColor: Colors.yellow,
            label: currentSliderval.round().toString(),
            divisions: 4,
            autofocus: false,
            min: 0,
            max: 100,
            value: currentSliderval,
            onChanged: (double value) {
              setState(() {
                currentSliderval = value;
              });
            },
          ),
        ),
      ),
    ));
  }
}
