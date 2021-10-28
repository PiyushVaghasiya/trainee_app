import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
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
        body: Column(
          children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Expanded(
              child: Text(
                "Piyush_2906_",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ),
            Icon(
              Icons.add_box_outlined,
              color: Colors.white,
              size: 30,
            ),
            Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
            )
          ],
        ),
          ],
        ),



    );
  }
}
