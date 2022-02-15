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
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.brown,
        // backgroundColor:Color(0xFF4E1A0D),

        title: Text(
          "Home",
          style: TextStyle(fontFamily: "Rye"),
        ),
      ),
      drawer: AdvancedDrawer(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Advanced Drawer Example'),
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
          child: Container(),
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


