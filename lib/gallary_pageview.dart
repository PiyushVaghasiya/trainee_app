import 'package:flutter/material.dart';
import 'package:pinch_zoom/pinch_zoom.dart';

class Gallery_pageview extends StatefulWidget {
  const Gallery_pageview({Key? key}) : super(key: key);

  @override
  _Gallery_pageviewState createState() => _Gallery_pageviewState();
}

class _Gallery_pageviewState extends State<Gallery_pageview> {
  List<String> img = [
    "https://images.unsplash.com/photo-1613141354534-3d8f4a1dcee4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhdXRpZnVsJTIwYW5pbWFsfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://images-na.ssl-images-amazon.com/images/I/816iZ-Y9ynL.jpg"
  ];
  PageController pagecontroller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF232121),
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            "Gallery",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: 500,
              width: double.infinity,
              child: PinchZoom(
                resetDuration: const Duration(milliseconds: 100),
                maxScale: 2.5,
                child: PageView.builder(
                    controller: pagecontroller,
                    itemCount: img.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 500,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(img[index].toString()),
                              fit: BoxFit.cover),
                        ),
                      );
                    }),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 80,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: img.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 5, right: 5),
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(img[index].toString()),
                            fit: BoxFit.cover),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
