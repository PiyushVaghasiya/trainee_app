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
    Insta insta = Insta();
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
                  itemCount: post.pName.toString().length,
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
                                Text(
                                  "liked by piyush_123 and 1212 others",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            margin: EdgeInsets.all(5),
                          ),

                        ],
                      ),
                    );
                  },
                )
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
