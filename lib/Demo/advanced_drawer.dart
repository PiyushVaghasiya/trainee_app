import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:untitled/models/advanced_drawer_model.dart';

class AdvancedDrawerDemo extends StatefulWidget {
  const AdvancedDrawerDemo({Key? key}) : super(key: key);

  @override
  _AdvancedDrawerDemoState createState() => _AdvancedDrawerDemoState();
}

class _AdvancedDrawerDemoState extends State<AdvancedDrawerDemo> {
  final _advancedDrawerController = AdvancedDrawerController();

  List<AdvancedDrawerModel> item = [
    AdvancedDrawerModel(
        Image:
            "https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395__480.jpg",
        Title: "Pizza",
        Descri:
            "Pizza is a savory dish of italian origin consisting of all elements"),
    AdvancedDrawerModel(
        Image:
            "https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
        Title: "Burger",
        Descri:
            "Burger is a savory dish of italian origin consisting of all elements"),
    AdvancedDrawerModel(
        Image:
            "https://im1.dineout.co.in/images/uploads/restaurant/sharpen/6/x/p/p6816-15811593495e3e93b50466a.jpg?tr=tr:n-xlarge",
        Title: "Italian Pizza",
        Descri:
            "Pizza is a savory dish of italian origin consisting of all elements"),
    AdvancedDrawerModel(
        Image:
            "https://img.freepik.com/free-photo/top-view-pepperoni-pizza-sliced-into-six-slices_141793-2157.jpg?size=626&ext=jpg",
        Title: "Italian Pizza",
        Descri:
            "Pizza is a savory dish of italian origin consisting of all elements"),
  ];
  List<AdvancedDrawerModel> uitem = [];
  String lowersearchtext = "";
  String lowerOrgtext = "";
  String lowerOrgStext = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    uitem = item;
  }

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
          centerTitle: true,
          backgroundColor: Color(0xff36271c),
          title: Text(
            'Home',
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: "Rye", fontSize: 22),
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
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                height: 40,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.only(
                    right: 110,
                    left: 5,
                  ),
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        suffixIcon: Icon(Icons.search),
                      ),
                      onChanged: (value) {
                        setState(() {
                          uitem = item.where((e) {
                            lowersearchtext = value.toLowerCase();
                            lowerOrgtext = e.Title!.toLowerCase();
                            lowerOrgStext = e.Descri!.toLowerCase();
                            return lowerOrgtext.contains(lowersearchtext) ||
                                lowerOrgStext.contains(lowersearchtext);
                          }).toList();
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  itemCount: uitem.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 210, crossAxisCount: 2),
                  itemBuilder: (BuildContext cotext, int index) {
                    return Padding(
                      padding: EdgeInsets.all(3),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Container(
                              height: 110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        uitem[index].Image.toString()),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 10, bottom: 5),
                              child: Column(
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 3),
                                        child: Text(
                                          uitem[index].Title.toString(),
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontFamily: "Rye",
                                              color: Colors.black,
                                              fontSize: 13),
                                        ),
                                      ),
                                      Text(
                                        uitem[index].Descri.toString(),
                                        textAlign: TextAlign.start,
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontFamily: "Rye",
                                            color: Colors.grey,
                                            fontSize: 9),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "RM 129.0",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Rye",
                                    color: Colors.black,
                                    fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
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
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey.shade400, width: 0.5))),
                    child: ListTile(
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
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey.shade400, width: 0.5))),
                    child: ListTile(
                      leading: Icon(
                        Icons.home,color: Colors.black,
                      ),
                      title: Transform.translate(
                        offset: Offset(-25, 0),
                        child: Text(
                          'Home',
                          style: TextStyle(fontFamily: "Rye", fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey.shade400, width: 0.5))),
                    child: ListTile(
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
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey.shade400, width: 0.5))),
                    child: ListTile(
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
