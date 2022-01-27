import 'package:flutter/material.dart';
import 'package:untitled/whatsapp.dart';

class Wppersonchat extends StatefulWidget {
  const Wppersonchat({Key? key}) : super(key: key);

  @override
  _WppersonchatState createState() => _WppersonchatState();
}

class _WppersonchatState extends State<Wppersonchat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F242B),
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            color: Color(0xFF293749),
            alignment: Alignment.center,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Whatsapp()));
                          },
                          icon: Container(
                            child: Icon(
                              Icons.west_sharp,
                              color: Colors.white,
                            ),
                          )),
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://c.ndtvimg.com/2021-09/3a76mb38_cristiano-ronaldo-afp_625x300_11_September_21.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Text(
                    "Dishant Clg",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    Icons.videocam,
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    Icons.more_vert_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
