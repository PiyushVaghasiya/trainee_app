import 'package:flutter/material.dart';
import 'package:untitled/Activity.dart';
import 'package:untitled/Reels.dart';
import 'package:untitled/main.dart';
import 'package:untitled/profile.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> with SingleTickerProviderStateMixin {
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
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 25),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        color: Colors.black,
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                border:
                                    Border.all(color: Colors.black, width: 10),
                                borderRadius: BorderRadius.circular(20)),
                            width: double.infinity,
                            margin:
                                EdgeInsets.only(left: 10, right: 15, top: 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      'Search',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 120,
                                width: 118,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://wallpapercave.com/wp/wp2566164.jpg",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                height: 120,
                                width: 118,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1uyg_lF8i4l6OVU-l6FGdy8UT_9i49QmI48YEfYtFnDTdsEzG-xhp9Hha4XZWG2Ey4go&usqp=CAU",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                height: 120,
                                width: 118,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://images7.alphacoders.com/412/412136.jpg",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                height: 240,
                                width: 118,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpx0JNsjhYVIe6uKi-pZKoWBX_tORML6-o0A&usqp=CAU",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                height: 120,
                                width: 118,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://c4.wallpaperflare.com/wallpaper/134/983/630/alexandra-daddario-wallpaper-preview.jpg",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 120,
                                width: 118,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2014/11/30/10/58/twilight-551440__340.jpg",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                height: 120,
                                width: 118,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2016/12/06/14/33/sunrise-1886619__340.jpg",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                height: 120,
                                width: 118,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2017/01/12/02/20/massachusetts-1973530__340.jpg",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                height: 120,
                                width: 118,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsujxILZ-g7JRqaCe5ggThSyniXIxEuwjYBJY0u91p8N-QV8v0gv2OwF1ZlWeGKkODp7c&usqp=CAU",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                height: 120,
                                width: 118,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://images8.alphacoders.com/677/677866.jpg",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                height: 120,
                                width: 118,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://images.wallpapersden.com/image/download/scarlett-johansson-hot-wallpapers-2_amVsbWuUmZqaraWkpJRnbGhnrWdlaW0.jpg",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 120,
                                width: 118,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2020/04/05/02/53/dawn-5004385__340.jpg",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                height: 120,
                                width: 118,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://images.unsplash.com/photo-1619834548857-946ca6c24b83?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE4fHx8ZW58MHx8fHw%3D&w=1000&q=80",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                height: 240,
                                width: 118,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://files.oyebesmartest.com/uploads/preview/scrape-wp4139903vrlbl1kr.jpeg",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                height: 120,
                                width: 118,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://images4.alphacoders.com/174/thumb-1920-174966.jpg",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                height: 120,
                                width: 118,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj4r8yFsgKerMFicemXo6TTsEhOWd6nw9B8A&usqp=CAU",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Activity()));
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Profile()));
                      }),
                ],
              ),
            ),
          ],
        ));
  }
}
