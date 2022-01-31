import 'package:flutter/material.dart';
import 'package:untitled/Constants/pageview_demo_list.dart';

class PageviewDemo2 extends StatefulWidget {
  const PageviewDemo2({Key? key}) : super(key: key);

  @override
  _PageviewDemo2State createState() => _PageviewDemo2State();
}

class _PageviewDemo2State extends State<PageviewDemo2> {
  int pageindex = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade200,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    pageindex = value;
                  });
                },
                controller: pageController,
                itemCount: PageviewdemoList.pageviewdemo.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.red.shade200,
                          alignment: Alignment.center,
                          child: Icon(
                            PageviewdemoList.pageviewdemo[index].pIcon,
                            size: 100,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),
                          color: Colors.blue.shade200,
                          child: Text(
                            PageviewdemoList.pageviewdemo[index].pName
                                .toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      if (pageindex > 0) {
                        pageController.animateToPage(pageindex - 1,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      }
                    },
                    child: Text("previous")),
                ElevatedButton(
                    onPressed: () {
                      pageController.animateToPage(pageindex + 1,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: Text("next")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
