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
          child: SliderTheme(
            data: SliderThemeData(
              activeTrackColor: Colors.orange,
              inactiveTrackColor: Colors.black,
              thumbColor: Colors.yellow,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
              overlayColor: Colors.green.withOpacity(0.18),
              activeTickMarkColor: Colors.transparent,
              inactiveTickMarkColor: Colors.white,
              trackHeight: 11.0,
            ),
            child: SizedBox(
              width: 200,
              child: Slider(
                mouseCursor: MaterialStateMouseCursor.textable,
                label: currentSliderval.round().toString(),
                divisions: 10,
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
        ),
      ),
    ));
  }
}
