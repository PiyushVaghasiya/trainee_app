import 'package:flutter/material.dart';
import 'package:untitled/messages.dart';
import 'package:untitled/models/insta_post.dart';
import 'package:untitled/models/insta_story.dart';

class InstaHome extends StatefulWidget {
  const InstaHome({Key? key}) : super(key: key);

  @override
  _InstaHomeState createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {
  @override
  Widget build(BuildContext context) {
    Insta insta = Insta();
    Post post = Post();
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
                                border:
                                    Border.all(width: 3, color: Colors.black),
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
                                  color: Colors.transparent, width: 2),
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
                    return Column(
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
                                      width: 2, color: Colors.black),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        instapost[index].pImage.toString(),
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
                                    color: Colors.transparent, width: 2),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Text(
                                  instapost[index].pName.toString(),
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
                        Container(
                          height: 360,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    instapost[index].postImage.toString()),
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
                                      width: 2, color: Colors.black),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        instapost[index].pImage.toString(),
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                    text: "liked by ",
                                    style: TextStyle(color: Colors.white),
                                    children: [
                                      TextSpan(
                                          text: instapost[index]
                                              .likeName
                                              .toString(),
                                          style:
                                              TextStyle(color: Colors.white)),
                                      TextSpan(
                                          text: " and other 1221",
                                          style:
                                              TextStyle(color: Colors.white))
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
                          margin: EdgeInsets.only(left: 5),
                          height: 30,
                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          child: RichText(
                            text: TextSpan(
                                text: instapost[index].pTime.toString(),
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 10),
                                children: [
                                  TextSpan(
                                    text: "ago",
                                  )
                                ]),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}