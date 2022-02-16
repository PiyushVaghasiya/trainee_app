import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class AdvancedDrawerDemo extends StatefulWidget {
  const AdvancedDrawerDemo({Key? key}) : super(key: key);

  @override
  _AdvancedDrawerDemoState createState() => _AdvancedDrawerDemoState();
}

class _AdvancedDrawerDemoState extends State<AdvancedDrawerDemo> {
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: Color(0xFAF6F4F4),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      // childDecoration: const BoxDecoration(
      //   // NOTICE: Uncomment if you want to add shadow behind the page.
      //   // Keep in mind that it may cause animation jerks.
      //   // boxShadow: <BoxShadow>[
      //   //   BoxShadow(
      //   //     color: Colors.black12,
      //   //     blurRadius: 0.0,
      //   //   ),
      //   // ],
      //   borderRadius: const BorderRadius.all(Radius.circular(16)),
      // ),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Hello',
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: "Rye"),
          ),
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: Duration(milliseconds: 250),
                  child: Icon(
                    value.visible ? Icons.clear : Icons.menu,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            ),
          ),
        ),
        body: Container(),
      ),
      drawer: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://media.wired.com/photos/593261cab8eb31692072f129/master/pass/85120553.jpg"),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Piyush Vaghasiya",
                      style: TextStyle(
                          fontFamily: "Rye", color: Colors.black, fontSize: 12),
                    ),
                    Text(
                      "piyushvaghasiya@gmail.com",
                      style: TextStyle(
                          fontFamily: "Rye", color: Colors.black, fontSize: 10),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    title: Transform.translate(
                      offset: Offset(-25, 0),
                      child: Text(
                        'Profile',
                        style: TextStyle(fontFamily: "Rye", fontSize: 12),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.home,
                    ),
                    title: Transform.translate(
                      offset: Offset(-25, 0),
                      child: Text(
                        'Home',
                        style: TextStyle(fontFamily: "Rye", fontSize: 12),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                    ),
                    title: Transform.translate(
                      offset: Offset(-25, 0),
                      child: Text(
                        'Cart',
                        style: TextStyle(fontFamily: "Rye", fontSize: 12),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.black,
                    ),
                    title: Transform.translate(
                      offset: Offset(-25, 0),
                      child: Text(
                        'Logout',
                        style: TextStyle(fontFamily: "Rye", fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
