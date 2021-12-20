import 'package:flutter/material.dart';

class Edit_profile extends StatefulWidget {
  const Edit_profile({Key? key}) : super(key: key);

  @override
  _Edit_profileState createState() => _Edit_profileState();
}

class _Edit_profileState extends State<Edit_profile>
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.cancel_outlined,
                        color: Colors.white,
                        size: 33,
                      )),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        "Edit Profile",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.save_alt,
                        color: Colors.white,
                        size: 30,
                      )),
                ],
              ),
              Container(
                height: 160,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/profile.jpg"),
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Text(
                      "Change profile photo",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    )
                  ],
                ),
              ),
              TextFormField(style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Name",
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
