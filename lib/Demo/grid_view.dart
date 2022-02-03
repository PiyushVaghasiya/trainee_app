import 'package:flutter/material.dart';

class GridViewDemo extends StatefulWidget {
  const GridViewDemo({Key? key}) : super(key: key);

  @override
  _GridViewDemoState createState() => _GridViewDemoState();
}

List<String> netimg = [
  "https://e0.365dm.com/21/11/768x432/skysports-cristiano-ronaldo_5569575.jpg",
  "https://e0.365dm.com/21/11/768x432/skysports-cristiano-ronaldo_5569575.jpg",
  "https://e0.365dm.com/21/11/768x432/skysports-cristiano-ronaldo_5569575.jpg",
  "https://e0.365dm.com/21/11/768x432/skysports-cristiano-ronaldo_5569575.jpg",
  "https://e0.365dm.com/21/11/768x432/skysports-cristiano-ronaldo_5569575.jpg",
  "https://e0.365dm.com/21/11/768x432/skysports-cristiano-ronaldo_5569575.jpg",
];

class _GridViewDemoState extends State<GridViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: GridView.builder(
              itemCount: netimg.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  child: Image.network(
                    netimg[index],
                    fit: BoxFit.fill,
                  ),
                );
              }),
        ),
      ),
    );
  }
}
