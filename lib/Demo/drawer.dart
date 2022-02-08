import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  const DrawerDemo({Key? key}) : super(key: key);

  @override
  _DrawerDemoState createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1F242B),
          title: Text("Drawer demo"),
        ),
        drawer: Drawer(
          child: Container(
            width: 200,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                // return Container(
                //   width: 200,
                //   alignment: Alignment.center,
                //   child: Row(
                //     children: [
                //       Icon(Icons.camera),
                //       Expanded(
                //         child: Text(
                //           "new goup",
                //           style: TextStyle(color: Colors.red),
                //         ),
                //       )
                //     ],
                //   ),
                // );
                return ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
