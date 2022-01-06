import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Center(
          child: Image.network(
            "https://i.stack.imgur.com/RHzvO.png",
            fit: BoxFit.fill,
            height: double.infinity,
          ),
        ),
        title: "Live Demo page 2 ",
        body: "Introduction Screen",
        footer: Text("Page1"),
        decoration: const PageDecoration(
          bodyAlignment: Alignment.bottomRight,
          imageAlignment: Alignment.center,
          fullScreen: true,
        ),
      ),
      PageViewModel(
        image: Center(
          child: Image.network(
            "https://support.aspnetzero.com/QA/files/2359_ae4d287e49b0108e5571e33132b12e7a.jpg",
            fit: BoxFit.fill,
            height: double.infinity,
          ),
        ),
        title: "Live Demo page 2 ",
        body: "Introduction Screen",
        footer: Text("Page2"),
        decoration: const PageDecoration(
          bodyAlignment: Alignment.center,
          imageAlignment: Alignment.center,
          fullScreen: true,
        ),
      ),
      PageViewModel(
        image: Center(
          child: Image.network(
            "https://i.pinimg.com/originals/4c/06/69/4c066948b8c672bb36839d0c416f779c.png",
            height: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        title: "Live Demo page 3",
        body: "Introduction Screen",
        footer: Text("Page3"),
        decoration: const PageDecoration(
          bodyAlignment: Alignment.center,
          imageAlignment: Alignment.center,
          fullScreen: true,
        ),
      ),
      PageViewModel(
        image: Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6x3t0FIUdLhxExC66AzGXzPwNpOwIEn63daQQRdRrwyo-MSUiOyyXQSEhQuLxKL49mFU&usqp=CAU",
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        title: "Live Demo page 4 ",
        body: "Introduction Screen",
        footer: Text("Page4"),
        decoration: const PageDecoration(
          bodyAlignment: Alignment.center,
          imageAlignment: Alignment.center,
          fullScreen: true,
        ),
      ),
    ];
  }

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
        body: IntroductionScreen(
          showDoneButton: true,
          showNextButton: true,
          showSkipButton: true,
          next: Text("Next"),
          skip: Text("Skip"),
          done: Text("Done"),
          onDone: () {},
          onSkip: () {},
          pages: getPages(),
        ),
      ),
    );
  }
}
