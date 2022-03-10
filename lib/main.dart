// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:untitled/Activity.dart';
import 'package:untitled/Demo/Design.dart';
import 'package:untitled/Demo/Design2.dart';
import 'package:untitled/Demo/Slider.dart';
import 'package:untitled/Demo/Textformfield.dart';
import 'package:untitled/Demo/advanced_drawer.dart';
import 'package:untitled/Demo/dialog.dart';
import 'package:untitled/Demo/download_image.dart';
import 'package:untitled/Demo/drawer.dart';
import 'package:untitled/Demo/drawer_design.dart';
import 'package:untitled/Demo/grid_view.dart';
import 'package:untitled/Demo/listview.dart';
import 'package:untitled/Demo/model_demo.dart';
import 'package:untitled/Demo/page_view.dart';
import 'package:untitled/Demo/pageview_demo2.dart';
import 'package:untitled/Demo/radio_button_demo.dart';
import 'package:untitled/Demo/tridimensional_drawer.dart';
import 'package:untitled/Reels.dart';
import 'package:untitled/Shared%20Preferences/sharedpreferences_splashScreen.dart';
import 'package:untitled/edit_profile.dart';
import 'package:untitled/insta_Home.dart';
import 'package:untitled/messages.dart';
import 'package:untitled/models/insta_post.dart';
import 'package:untitled/models/insta_story.dart';
import 'package:untitled/models/whatsapp_status_model.dart';
import 'package:untitled/profile.dart';
import 'package:untitled/search.dart';
import 'package:untitled/Shared%20Preferences/sharedpreferences_login.dart';
import 'package:untitled/whatsapp_chats.dart';
import 'package:untitled/whatsapp_calls.dart';
import 'package:untitled/whatsapp_home.dart';
import 'package:untitled/whatsapp_person_chat.dart';
import 'package:untitled/whatsapp_status.dart';
import 'Demo/database.dart';
import 'Demo/database_design.dart';
import 'Demo/dropdown_button.dart';
import 'gallary_pageview.dart';
import 'hero_widget.dart';
import 'image_picker_demo.dart';
import 'imagepicker_design.dart';
import 'imagepicker_splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DatabaseDesign(),
    );
  }
}

class Chat extends StatefulWidget {
  const Chat({Key key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  final barColor = const Color(0xFF232121);
  static const primary = Color(0xffF4D29A);
  static const light_yellow = Color(0xffF2E7C5);
  static const golden_yellow = Color(0xffC6A26F);
  static const coffee_dark = Color(0xff4C3F35);
  static const coffee_light = Color(0xff6e5847);
  static const black = Colors.black;
  static const white = Colors.white;
  static const grey = Colors.grey;
  static const light_grey = Colors.black12;
  static const platinum = Color(0xffE5E4E2);
  static const purple = Color(0xff7B1FA2);
  static const light_purple = Color(0xffDEC2F3);
  static const red = Colors.red;
  static const blue = Color(0xff3F51B5);
  static const fBlue = Color(0xff3F558F);
  static const endColor = Color(0xff3d0890);
  static const centerColor = Color(0xff710792);
  static const startColor = Color(0xff980694);
  static const Color grey_box_color = Color(0xffEEEEEE);

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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: const Text(
            ' Instagram',
            style: TextStyle(color: Colors.white, fontFamily: 'bertha'),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            ),
            IconButton(
              icon: Icon(
                Icons.message,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Messages()),
                );
                // do something
              },
            ),
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(left: 5),
          color: Colors.black,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 110,
                          child: ListView.builder(
                              primary: false,
                              shrinkWrap: true,
                              itemCount: storynm.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 3, color: Colors.black),
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                storyimg[index],
                                              ),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                            begin: Alignment.bottomLeft,
                                            end: Alignment.topRight,
                                            colors: [
                                              Colors.yellowAccent,
                                              Colors.orange,
                                              Colors.pink,
                                              Colors.red,
                                            ]),
                                        border: Border.all(
                                            color: Colors.transparent,
                                            width: 2),
                                      ),
                                    ),
                                    Text(
                                      storynm[index],
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                );
                              }),
                        ),
                        SizedBox(
                          height: 475,
                          child: ListView.builder(
                            primary: false,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: instapost.length,
                            itemBuilder: (context, index) {
                              return Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(5),
                                          child: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 2,
                                                  color: Colors.black),
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                    instapost[index]
                                                        .pImage
                                                        .toString(),
                                                  ),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            gradient: LinearGradient(
                                                begin: Alignment.bottomLeft,
                                                end: Alignment.topRight,
                                                colors: [
                                                  Colors.yellowAccent,
                                                  Colors.orange,
                                                  Colors.pink,
                                                  Colors.red,
                                                ]),
                                            border: Border.all(
                                                color: Colors.transparent,
                                                width: 2),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.all(10),
                                            child: Text(
                                              instapost[index].pName.toString(),
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.info,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                            // do something
                                          },
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 360,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(instapost[index]
                                                .postImage
                                                .toString()),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          IconButton(
                                            icon: Icon(
                                              Icons.favorite_border_rounded,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {},
                                          ),
                                          IconButton(
                                            icon: Icon(
                                              Icons.comment_rounded,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {},
                                          ),
                                          IconButton(
                                            icon: Icon(
                                              Icons.share,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {},
                                          ),
                                          Expanded(
                                            child: IconButton(
                                              icon: Icon(
                                                Icons.save,
                                                color: Colors.white,
                                              ),
                                              onPressed: () {},
                                              alignment: Alignment.centerRight,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 2,
                                                  color: Colors.black),
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                    instapost[index]
                                                        .pImage
                                                        .toString(),
                                                  ),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                          RichText(
                                            text: TextSpan(
                                                text: "liked by ",
                                                style: TextStyle(
                                                    color: Colors.white),
                                                children: [
                                                  TextSpan(
                                                      text: instapost[index]
                                                          .likeName
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: Colors.white)),
                                                  TextSpan(
                                                      text: " and other 1221",
                                                      style: TextStyle(
                                                          color: Colors.white))
                                                ]),
                                          ),
                                        ],
                                      ),
                                      margin: EdgeInsets.all(5),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      alignment: Alignment.centerLeft,
                                      height: 20,
                                      width: double.infinity,
                                      child: Text(
                                        "View all 30 comments ",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/lake.png",
                                                ),
                                                fit: BoxFit.fill,
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                            height: 20,
                                            width: 30,
                                            margin: EdgeInsets.all(5),
                                          ),
                                          Expanded(
                                            child: Text(
                                              "Add a comment... ",
                                              textAlign: TextAlign.left,
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ),
                                          Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                            size: 20,
                                          ),
                                          Container(
                                            child: Image.asset(
                                              "assets/images/hands.jpg",
                                              fit: BoxFit.fill,
                                            ),
                                            height: 20,
                                            width: 20,
                                            margin: EdgeInsets.only(
                                                left: 5, right: 5),
                                          ),
                                          Icon(
                                            Icons.add_box_outlined,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      height: 30,
                                      width: double.infinity,
                                      alignment: Alignment.centerLeft,
                                      child: RichText(
                                        text: TextSpan(
                                            text: instapost[index]
                                                .pTime
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10),
                                            children: [
                                              TextSpan(
                                                text: "ago",
                                              )
                                            ]),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.home_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Chat()));
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Search()));
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.play_circle_outline,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Reels()));
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.favorite_border_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Activity()));
                      },
                    ),
                    InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/lake.png",
                              ),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                          ),
                          height: 45,
                          width: 30,
                          margin: EdgeInsets.all(5),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profile()));
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
