import 'package:flutter/material.dart';
import 'package:untitled/main.dart';

class Msg extends StatefulWidget {
  const Msg({Key? key}) : super(key: key);

  @override
  _MsgState createState() => _MsgState();
}

class _MsgState extends State<Msg> with SingleTickerProviderStateMixin {
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
      body: Container(
        color: Colors.black,

        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                IconButton(
                  icon: Icon(
                    Icons.west_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Chat()),
                  );
                    // do something
                  },
                ),
                Expanded(
                  child: Text(
                    "Piyush_2906_",
                    style: TextStyle(color: Colors.white, fontSize: 25,),
                  ),
                ),
                Icon(Icons.video_call,color: Colors.white,size: 30,),
                Icon(Icons.notes_outlined,color: Colors.white,size: 30,)

              ],

            ),

          ],
        ),
      ),
    );
  }
}
