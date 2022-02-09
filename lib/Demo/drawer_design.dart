import 'package:flutter/material.dart';

class DrawerDesign extends StatefulWidget {
  const DrawerDesign({Key? key}) : super(key: key);

  @override
  _DrawerDesignState createState() => _DrawerDesignState();
}

class _DrawerDesignState extends State<DrawerDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF454AAA),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                color: Color(0xFF454AAA),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 160,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          height: 50,
                          width: 50,
                          child: Icon(
                            Icons.menu,
                            color: Colors.purple,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 50,
                              width: 50,
                              child: Icon(
                                Icons.add,
                                color: Colors.purple,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 50,
                              width: 50,
                              child: Icon(
                                Icons.qr_code_scanner_outlined,
                                color: Colors.purple,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF304282),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 30,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Search",
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 20,
                            child: Icon(
                              Icons.linear_scale,
                              color: Colors.black26,
                              size: 30,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Order item",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 100,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            "https://cdn.shopify.com/s/files/1/2690/0106/products/Eco-FriendlyStorageBasketSet7_402464df-646e-420a-8fea-da08f728dade_600x.jpg?v=1622564139",
                                          ),
                                          fit: BoxFit.cover)),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        "Basket Set",
                                        style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
