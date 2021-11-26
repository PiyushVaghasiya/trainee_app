import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/main.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity>
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Activity",
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          margin: EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.vectorstock.com/i/thumb-large/94/38/avatar-flat-icon-on-black-background-black-style-vector-25959438.jpg")),
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.white, width: 1)),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Follow requests",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Approve or ignore requests",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Text(
                        "Today",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            margin: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")),
                                shape: BoxShape.circle,
                               ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "||__mr.nik__||",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text:
                                                " commented on a post that you're tagged in :",
                                          ),
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.local_fire_department,
                                              color: Colors.yellow,
                                              size: 20,
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.local_fire_department,
                                              color: Colors.yellow,
                                              size: 20,
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                              size: 20,
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                              size: 20,
                                            ),
                                          ),
                                          TextSpan(
                                            text: " 1d",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ]),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.favorite_border_outlined,
                                          color: Colors.grey,
                                          size: 20,
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Text(
                                              "Reply",
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR10hkHFV6UitNs7ArQUbAmJGZtn-NIzXPPLRgUq7K-4zt6DcgeSaUzgCaLh49iMx4MN4c&usqp=CAU")),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(margin: EdgeInsets.only(top: 10,bottom: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            margin: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")),
                                shape: BoxShape.circle,
                              ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "||__mr.nik__||",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: " liked your comment :",
                                          ),
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.local_fire_department,
                                              color: Colors.yellow,
                                              size: 20,
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.local_fire_department,
                                              color: Colors.yellow,
                                              size: 20,
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                              size: 20,
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                              size: 20,
                                            ),
                                          ),
                                          TextSpan(
                                            text: " 1d",
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR10hkHFV6UitNs7ArQUbAmJGZtn-NIzXPPLRgUq7K-4zt6DcgeSaUzgCaLh49iMx4MN4c&usqp=CAU")),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(margin: EdgeInsets.only(top: 10,),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            margin: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://wallpaperaccess.com/full/2213424.jpg")),
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.red, width: 3)),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "viklo_1010",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text:
                                                " commented on a post that you're tagged in : ",
                                          ),
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.local_fire_department,
                                              color: Colors.yellow,
                                              size: 20,
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.local_fire_department,
                                              color: Colors.yellow,
                                              size: 20,
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.local_fire_department,
                                              color: Colors.yellow,
                                              size: 20,
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.local_fire_department,
                                              color: Colors.yellow,
                                              size: 20,
                                            ),
                                          ),
                                          TextSpan(
                                            text: " 1d",
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ]),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.favorite_border_outlined,
                                          color: Colors.grey,
                                          size: 20,
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Text(
                                              "Reply",
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            margin: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR10hkHFV6UitNs7ArQUbAmJGZtn-NIzXPPLRgUq7K-4zt6DcgeSaUzgCaLh49iMx4MN4c&usqp=CAU")),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(margin: EdgeInsets.only(top: 10,),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            margin: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://1.bp.blogspot.com/-qES8XCPCoMs/YPenPwxubUI/AAAAAAAAFdg/txOuXwSLWGQLT-QGAh98a-8m26UjMU9XQCLcBGAsYHQ/w640-h614/20210721_101605.jpg")),
                                shape: BoxShape.circle,
                               ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "mr_ronnie_patel_777",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text:
                                            " mentioned you in a comment: ",
                                          ),
                                          TextSpan(
                                            text:
                                            " @piyush_2906_ ",style: TextStyle(color: Colors.lightBlue),
                                          ),
                                          TextSpan(
                                            text:
                                            "tqq bhai",
                                          ),
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                              size: 20,
                                            ),
                                          ),

                                          TextSpan(
                                            text: " 1d",
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ]),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.favorite_border_outlined,
                                          color: Colors.grey,
                                          size: 20,
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Text(
                                              "Reply",
                                              style:
                                              TextStyle(color: Colors.grey),
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            margin: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR10hkHFV6UitNs7ArQUbAmJGZtn-NIzXPPLRgUq7K-4zt6DcgeSaUzgCaLh49iMx4MN4c&usqp=CAU")),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.black,
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
        ));
  }
}
