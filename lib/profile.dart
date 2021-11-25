import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/main.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
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
      body: Container(
        margin: EdgeInsets.only(top: 20),
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.lock_open,
                        color: Colors.white,
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Text(
                            "piyush_2906_",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.add_box_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        color: Colors.black,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  height: 90,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/profile.jpg")),
                                      shape: BoxShape.circle),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "5",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Text(
                                      "Posts",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "490",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      "Followers",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "535",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Text(
                                      "Following",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              alignment: Alignment.centerLeft,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(3),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Piyush Vaghasiya",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.emoji_people_rounded,
                                        color: Colors.blue,
                                      ),
                                      Icon(
                                        Icons.emoji_emotions,
                                        color: Colors.yellow,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.wb_sunny,
                                        color: Colors.yellow,
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 5, right: 5),
                                        child: Text(
                                          "Heliophile",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Icon(
                                        Icons.wb_sunny,
                                        color: Colors.yellow,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.music_note,
                                        color: Colors.blue,
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 5, right: 5),
                                        child: Text(
                                          "Music",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13),
                                        ),
                                      ),
                                      Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      ),
                                      Icon(
                                        Icons.music_note,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          margin: EdgeInsets.only(top: 10),
                                          height: 30,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white30)),
                                          child: Text(
                                            "Edit Profile",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 10, left: 5, right: 5),
                                        height: 30,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.white30)),
                                        child: Icon(Icons.expand_more_rounded,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          margin:
                                              EdgeInsets.only(top: 10, left: 5),
                                          height: 30,
                                          child: Text(
                                            "Story Highlights",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 10, left: 5, right: 2),
                                        height: 30,
                                        child: Icon(
                                          Icons.expand_more_rounded,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 5),
                                        decoration: BoxDecoration(
                                            border: Border(
                                          bottom: BorderSide(
                                              width: 1, color: Colors.white),
                                        )),
                                        height: 40,
                                        width: 200,
                                        child: Icon(
                                          Icons.post_add_sharp,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 200,
                                        child: Icon(
                                          Icons.people_rounded,
                                          color: Colors.white38,
                                          size: 30,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(

                                        height: 110,
                                        width: 135,
                                        decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2014/11/30/10/58/twilight-551440__340.jpg",
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Container(

                                        height: 110,
                                        width: 135,
                                        decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2016/12/06/14/33/sunrise-1886619__340.jpg",
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Container(

                                        height: 110,
                                        width: 135,
                                        decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2017/01/12/02/20/massachusetts-1973530__340.jpg",
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        height: 110,
                                        width: 135,
                                        decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2020/04/05/02/53/dawn-5004385__340.jpg",
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 110,
                                        width: 135,
                                        decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://images.unsplash.com/photo-1619834548857-946ca6c24b83?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE4fHx8ZW58MHx8fHw%3D&w=1000&q=80",
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 110,
                                        width: 135,
                                        decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRM5iEj1qbLA8v0RsIuKWCxEN5Jo54thBUeDA&usqp=CAU",
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        height: 110,
                                        width: 135,
                                        decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://cdn.theatlantic.com/media/img/photo/2018/10/images-of-the-season-fall-is-in-the/f02_RTX6EJJJ-1/original.jpg",
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 110,
                                        width: 135,
                                        decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1uyg_lF8i4l6OVU-l6FGdy8UT_9i49QmI48YEfYtFnDTdsEzG-xhp9Hha4XZWG2Ey4go&usqp=CAU",
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 110,
                                        width: 135,
                                        decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4pXI-CGjzgaJR6Qdp2x-NtRkolIOqMVtyXw&usqp=CAU",
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: IconButton(
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Chat()));
                      },
                    ),
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
                    onPressed: () {},
                  ),
                  Container(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
