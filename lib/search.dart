import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> with SingleTickerProviderStateMixin {
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
      body: Container(
        margin: EdgeInsets.only(top: 25),
        child: Column(
          children: [
            Container(
              color: Colors.grey,
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  height: 50,
                  width: 300,
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 110,
                  width: 118,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
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
                  width: 118,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
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
                  width: 118,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 110,
                  width: 118,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
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
                  width: 118,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
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
                  width: 118,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 110,
                  width: 118,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
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
                  width: 118,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
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
                  width: 118,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
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
    );
  }
}
