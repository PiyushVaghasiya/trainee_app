import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/employee.dart';
import 'package:untitled/models/insta_post.dart';
import 'package:untitled/models/insta_story.dart';

class ListviewDemo extends StatefulWidget {
  const ListviewDemo({Key? key}) : super(key: key);

  @override
  _ListviewDemoState createState() => _ListviewDemoState();
}

class _ListviewDemoState extends State<ListviewDemo>
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
    List<Post> instapost = [
      Post(
          Images:
          "https://e0.365dm.com/21/11/768x432/skysports-cristiano-ronaldo_5569575.jpg",
          Name: "piyushv",
          pImage:
          "https://images.unsplash.com/photo-1516617442634-75371039cb3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGhvdG8lMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
          likes: 100,
          Comments: 15),
      Post(
        Images:
        "https://stat2.bollywoodhungama.in/wp-content/uploads/2021/02/WhatsApp-Image-2021-02-22-at-9.12.41-PM.jpeg",
        Name: "piyushvaghasiya",
        pImage:
        "https://i.pinimg.com/736x/d8/bd/d9/d8bdd9632becd0fe3ad025cabb91ba93.jpg",
        likes: 200,
        Comments: 20,
      ),
      Post(
        Images:
        "https://filmfare.wwmindia.com/content/2021/jan/hrithikroshan41612021598.jpg",
        Name: "utsav",
        pImage:
        "https://www.nawpic.com/media/2020/cool-backgrounds-nawpic-500x931.jpg",
        likes: 108,
        Comments: 22,
      ),
    ];
    List<String> name = ["piyush", "dishant", "abc"];

    List<Employee> employeelist = [
      Employee(name: "piyush", married: true, salary: 1000, age: 20),
      Employee(name: "dishant", married: true, salary: 1000, age: 20),
      Employee(name: "abc", married: true, salary: 1000, age: 10),
      Employee(name: "def", married: true, salary: 12200, age: 20),
      Employee(name: "ghi", married: false, salary: 1000, age: 20),
      Employee(name: "jkl", married: true, salary: 1400, age: 30),
      Employee(name: "mno", married: false, salary: 9000, age: 17),
    ];
    Post post = Post();

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 500,
                alignment: Alignment.center,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: post.Name.toString().length,
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
                                    instapost[index].Name.toString(),
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
                                      instapost[index].Images.toString()),
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
                                                .Name
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
                                  text: instapost[index].Name.toString(),
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
                      ),
                    );
                  },
                ),
                // child: ListView.builder(
                //     shrinkWrap: true,
                //     scrollDirection: Axis.horizontal,
                //     itemCount: employeelist.length,
                //     itemBuilder: (context, index) {
                //       return Container(
                //         width: 200,
                //         alignment: Alignment.center,
                //         margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                //         color: Colors.blue.shade50,
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: [
                //             Text(employeelist[index].name ?? ""),
                //             Text(employeelist[index].salary.toString()),
                //             Text("married :${employeelist[index].married}"),
                //             Text(employeelist[index].age.toString()),
                //           ],
                //         ),
                //       );
                //     }),
                ),
          ],
        ),
      ),
    );
  }
}
