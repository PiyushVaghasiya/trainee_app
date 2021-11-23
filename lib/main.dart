import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:untitled/Activity.dart';
import 'package:untitled/messages.dart';
import 'package:untitled/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Chat(),
    );
  }
}

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> with SingleTickerProviderStateMixin {
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
      appBar: AppBar(
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
                MaterialPageRoute(builder: (context) => Msg()),
              );
              // do something
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      color: Colors.black,
                      height: 100,
                      width: 450,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/lake.png",
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                    border:
                                        Border.all(color: Colors.red, width: 3),
                                    shape: BoxShape.circle,
                                  ),
                                  height: 80,
                                  width: 80,
                                ),
                              ),
                              Text(
                                "Your story",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/lake.png",
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                    border:
                                        Border.all(color: Colors.red, width: 3),
                                    shape: BoxShape.circle,
                                  ),
                                  height: 80,
                                  width: 80,
                                ),
                              ),
                              Text(
                                "piyush123",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/lake.png",
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                    border:
                                        Border.all(color: Colors.red, width: 3),
                                    shape: BoxShape.circle,
                                  ),
                                  height: 80,
                                  width: 80,
                                ),
                              ),
                              Text(
                                "piyush234",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/lake.png",
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                    border:
                                        Border.all(color: Colors.red, width: 3),
                                    shape: BoxShape.circle,
                                  ),
                                  height: 80,
                                  width: 80,
                                ),
                              ),
                              Text(
                                "piyush888",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/lake.png",
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                    border:
                                        Border.all(color: Colors.red, width: 3),
                                    shape: BoxShape.circle,
                                  ),
                                  height: 80,
                                  width: 80,
                                ),
                              ),
                              Text(
                                "piyush567",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
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
                                    border:
                                        Border.all(color: Colors.red, width: 1),
                                    shape: BoxShape.circle,
                                  ),
                                  height: 45,
                                  width: 30,
                                  margin: EdgeInsets.all(5),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      'piyush123',
                                      style: TextStyle(color: Colors.white),
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
                          ),
                          Container(
                            child: Image.asset(
                              "assets/images/Tree.webp",
                              height: 300,
                              fit: BoxFit.fill,
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
                                  margin: EdgeInsets.only(left: 5, right: 10),
                                ),
                                Text(
                                  "liked by piyush_123 and 1212 others",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            margin: EdgeInsets.all(5),
                          ),
                          Container(
                            height: 20,
                            child: Text(
                              "View all 30 comments ",
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.grey),
                            ),
                            margin: EdgeInsets.only(left: 0, right: 250),
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
                                    style: TextStyle(color: Colors.grey),
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
                                  margin: EdgeInsets.only(left: 5, right: 5),
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
                            child: Text(
                              "20 minutes ago",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                              textAlign: TextAlign.left,
                            ),
                            margin: EdgeInsets.only(left: 0, right: 300),
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
                                    border:
                                        Border.all(color: Colors.red, width: 1),
                                    shape: BoxShape.circle,
                                  ),
                                  height: 45,
                                  width: 30,
                                  margin: EdgeInsets.all(5),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      'vaghasiya890',
                                      style: TextStyle(color: Colors.white),
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
                          ),
                          Container(
                            child: Image.asset(
                              "assets/images/taj.jpeg",
                              height: 300,
                              fit: BoxFit.fill,
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
                                  margin: EdgeInsets.only(left: 5, right: 10),
                                ),
                                Text(
                                  "liked by piyush_123 and 1212 others",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            margin: EdgeInsets.all(5),
                          ),
                          Container(
                            height: 20,
                            child: Text(
                              "View all 30 comments ",
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.grey),
                            ),
                            margin: EdgeInsets.only(left: 0, right: 250),
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
                                    style: TextStyle(color: Colors.grey),
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
                                  margin: EdgeInsets.only(left: 5, right: 5),
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
                            child: Text(
                              "25 minutes ago",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                              textAlign: TextAlign.left,
                            ),
                            margin: EdgeInsets.only(left: 0, right: 300),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.play_circle_outline,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.favorite_border_rounded,
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
                                border: Border.all(color: Colors.red, width: 1),
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
          ],
        ),
      ),
    );
  }
}
