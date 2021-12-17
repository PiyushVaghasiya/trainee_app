import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  const Listview({Key? key}) : super(key: key);

  @override
  _ListviewState createState() => _ListviewState();
}

class _ListviewState extends State<Listview>
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
  final List<String> entries = <String>['A', 'B', 'C','D','E','F'];
  final List<int> colorCodes = <int>[100, 200, 300,400,500,600];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
        ListView(scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(8),
          children: <Widget>[
            // Column(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         decoration: BoxDecoration(
            //           image: DecorationImage(
            //             image: AssetImage(
            //               "assets/images/lake.png",
            //             ),
            //             fit: BoxFit.fill,
            //           ),
            //           border: Border.all(
            //               color: Colors.red, width: 3),
            //           shape: BoxShape.circle,
            //         ),
            //         height: 80,
            //         width: 80,
            //       ),
            //     ),
            //     Text(
            //       "Your story",
            //       style: TextStyle(color: Colors.white),
            //     ),
            //   ],
            // ),
            Container(margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/lake.png",
                  ),
                  fit: BoxFit.fill,
                ),
                border: Border.all(
                    color: Colors.red, width: 3),
                shape: BoxShape.circle,
              ),
              height: 80,
              width: 80,
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/lake.png",
                  ),
                  fit: BoxFit.fill,
                ),
                border: Border.all(
                    color: Colors.red, width: 3),
                shape: BoxShape.circle,
              ),
              height: 80,
              width: 80,
            ),
            Container(
              height: 50,width: 50,
              color: Colors.amber[200],
              child: const Center(child: Text('Entry B')),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/lake.png",
                  ),
                  fit: BoxFit.fill,
                ),
                border: Border.all(
                    color: Colors.red, width: 3),
                shape: BoxShape.circle,
              ),
              height: 80,
              width: 80,
            ),
            Container(
              height: 50,
              color: Colors.amber[400],
              child: const Center(child: Text('Entry D')),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/lake.png",
                  ),
                  fit: BoxFit.fill,
                ),
                border: Border.all(
                    color: Colors.red, width: 3),
                shape: BoxShape.circle,
              ),
              height: 80,
              width: 80,
            ),
            Container(
              height: 50,
              color: Colors.amber[600],
              child: const Center(child: Text('Entry F')),
            ), Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/lake.png",
                  ),
                  fit: BoxFit.fill,
                ),
                border: Border.all(
                    color: Colors.red, width: 3),
                shape: BoxShape.circle,
              ),
              height: 80,
              width: 80,
            ),
            Container(
              height: 50,
              color: Colors.amber[200],
              child: const Center(child: Text('Entry B')),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/lake.png",
                  ),
                  fit: BoxFit.fill,
                ),
                border: Border.all(
                    color: Colors.red, width: 3),
                shape: BoxShape.circle,
              ),
              height: 80,
              width: 80,
            ),

            Container(
              height: 50,
              color: Colors.amber[400],
              child: const Center(child: Text('Entry D')),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/lake.png",
                  ),
                  fit: BoxFit.fill,
                ),
                border: Border.all(
                    color: Colors.red, width: 3),
                shape: BoxShape.circle,
              ),
              height: 80,
              width: 80,
            ),
            Container(
              height: 50,
              color: Colors.amber[600],
              child: const Center(child: Text('Entry F')),
            ), Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/lake.png",
                  ),
                  fit: BoxFit.fill,
                ),
                border: Border.all(
                    color: Colors.red, width: 3),
                shape: BoxShape.circle,
              ),
              height: 80,
              width: 80,
            ),
            Container(
              height: 50,
              color: Colors.amber[200],
              child: const Center(child: Text('Entry B')),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/lake.png",
                  ),
                  fit: BoxFit.fill,
                ),
                border: Border.all(
                    color: Colors.red, width: 3),
                shape: BoxShape.circle,
              ),
              height: 80,
              width: 80,
            ), Container(
              height: 50,
              color: Colors.amber[400],
              child: const Center(child: Text('Entry A')),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/lake.png",
                  ),
                  fit: BoxFit.fill,
                ),
                border: Border.all(
                    color: Colors.red, width: 3),
                shape: BoxShape.circle,
              ),
              height: 80,
              width: 80,
            ),
            Container(
              height: 50,
              color: Colors.amber[600],
              child: const Center(child: Text('Entry E')),
            ),
          ],
        )

      ),
    );
  }
}
