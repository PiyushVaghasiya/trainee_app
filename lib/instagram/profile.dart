import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/edit_profile.dart';



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

  List<String> netimg = [
    "https://e0.365dm.com/21/11/768x432/skysports-cristiano-ronaldo_5569575.jpg",
    "https://qph.fs.quoracdn.net/main-qimg-c7a526dfad7e78f9062521efd0a3ea70-c",
    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmVhdXRpZnVsJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://st.depositphotos.com/1003697/4971/i/600/depositphotos_49719803-stock-photo-business-man-working-on-laptop.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnJ674oDerpv_o40CjAus6xnGGV3hDGpmkRQ&usqp=CAU",
    "https://www.nawpic.com/media/2020/cool-backgrounds-nawpic-500x931.jpg",
    "https://qph.fs.quoracdn.net/main-qimg-c7a526dfad7e78f9062521efd0a3ea70-c",
    "https://t3.ftcdn.net/jpg/02/94/62/14/360_F_294621430_9dwIpCeY1LqefWCcU23pP9i11BgzOS0N.jpg",
    "https://e0.365dm.com/21/11/768x432/skysports-cristiano-ronaldo_5569575.jpg",
    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmVhdXRpZnVsJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://qph.fs.quoracdn.net/main-qimg-c7a526dfad7e78f9062521efd0a3ea70-c",
    "https://st.depositphotos.com/1003697/4971/i/600/depositphotos_49719803-stock-photo-business-man-working-on-laptop.jpg",
    "https://e0.365dm.com/21/11/768x432/skysports-cristiano-ronaldo_5569575.jpg",
    "https://qph.fs.quoracdn.net/main-qimg-c7a526dfad7e78f9062521efd0a3ea70-c",
    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmVhdXRpZnVsJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://st.depositphotos.com/1003697/4971/i/600/depositphotos_49719803-stock-photo-business-man-working-on-laptop.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnJ674oDerpv_o40CjAus6xnGGV3hDGpmkRQ&usqp=CAU",
    "https://www.nawpic.com/media/2020/cool-backgrounds-nawpic-500x931.jpg",
    "https://qph.fs.quoracdn.net/main-qimg-c7a526dfad7e78f9062521efd0a3ea70-c",
    "https://t3.ftcdn.net/jpg/02/94/62/14/360_F_294621430_9dwIpCeY1LqefWCcU23pP9i11BgzOS0N.jpg",
    "https://e0.365dm.com/21/11/768x432/skysports-cristiano-ronaldo_5569575.jpg",
    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmVhdXRpZnVsJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://qph.fs.quoracdn.net/main-qimg-c7a526dfad7e78f9062521efd0a3ea70-c",
    "https://st.depositphotos.com/1003697/4971/i/600/depositphotos_49719803-stock-photo-business-man-working-on-laptop.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(top: 25),
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
                                        child: InkWell(
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
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Edit_profile()));
                                          },
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
                                        width: 180,
                                        child: Icon(
                                          Icons.post_add_sharp,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 170,
                                        child: Icon(
                                          Icons.people_rounded,
                                          color: Colors.white38,
                                          size: 30,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 300,
                              child: GridView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  itemCount: netimg.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 2,
                                          mainAxisSpacing: 2),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: NetworkImage(netimg[index]),
                                        fit: BoxFit.cover,
                                      )),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
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
                      Navigator.pushNamed(context, 'instaHome');
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'instaSearch');
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.play_circle_outline,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'instaReels');
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.favorite_border_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'instaActivity');
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
                            Navigator.pushNamed(context, 'instaProfile');
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
