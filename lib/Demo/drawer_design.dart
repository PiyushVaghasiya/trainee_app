import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DrawerDesign extends StatefulWidget {
  const DrawerDesign({Key? key}) : super(key: key);

  @override
  _DrawerDesignState createState() => _DrawerDesignState();
}

class _DrawerDesignState extends State<DrawerDesign> {
  var scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF454AAA),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xFF454AAA),
        ),
      ),
      key: scaffoldkey,
      drawer: Container(
        width: 270,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            InkWell(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.clear,
                  color: Color(0xFF7B94B6),
                  size: 27,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://st3.depositphotos.com/13193658/34355/i/1600/depositphotos_343554500-stock-photo-attentive-young-man-orange-shirt.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.menu,
                      color: Color(0xFF7B94B6),
                    ),
                    title: Transform.translate(
                      offset: Offset(-16, 0),
                      child: Text(
                        'Menu Option',
                        style: TextStyle(
                          color: Color(0xFF7B94B6),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.refresh,
                      color: Color(0xFF7B94B6),
                    ),
                    title: Transform.translate(
                      offset: Offset(-16, 0),
                      child: Text(
                        'Refunds',
                        style: TextStyle(
                          color: Color(0xFF7B94B6),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.all_inbox,
                      color: Color(0xFF7B94B6),
                    ),
                    title: Transform.translate(
                      offset: Offset(-16, 0),
                      child: Text(
                        'Transaction',
                        style: TextStyle(
                          color: Color(0xFF7B94B6),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Color(0xFF7B94B6),
                    ),
                    title: Transform.translate(
                      offset: Offset(-16, 0),
                      child: Text(
                        'settings',
                        style: TextStyle(
                          color: Color(0xFF7B94B6),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Color(0xFF7B94B6),
              ),
              title: Transform.translate(
                offset: Offset(-16, 0),
                child: Text(
                  'Logout',
                  style: TextStyle(
                    color: Color(0xFF7B94B6),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  color: Color(0xFF454AAA),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 165,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Container(
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
                            onTap: () {
                              scaffoldkey.currentState?.openDrawer();
                            },
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
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 10,
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
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Container(
                                height: 60,
                                width: 85,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          "https://cdn.shopify.com/s/files/1/2690/0106/products/Eco-FriendlyStorageBasketSet7_402464df-646e-420a-8fea-da08f728dade_600x.jpg?v=1622564139",
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  alignment: Alignment.centerLeft,
                                  height: 70,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Basket Set",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color(0xFF676DEE),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Seven stylish shower baskets with handle",
                                        style: TextStyle(
                                            color: Color(0xFF676DEE),
                                            fontSize: 12),
                                        overflow: TextOverflow.ellipsis,
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.left,
                                        maxLines: 2,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                "\$34",
                                style: TextStyle(
                                    fontSize: 19, color: Colors.black45),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Container(
                                height: 60,
                                width: 85,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          "https://www.chagrinvalleysoapandsalve.com/media/3412/citrus-garden-soap.jpg?anchor=center&mode=crop&width=769&height=769&rnd=1325573624600000009",
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  alignment: Alignment.centerLeft,
                                  height: 70,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Bath Soaps",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color(0xFF676DEE),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Set of natural bath soap with the samell of flower",
                                        style: TextStyle(
                                            color: Color(0xFF676DEE),
                                            fontSize: 12),
                                        overflow: TextOverflow.ellipsis,
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.left,
                                        maxLines: 2,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                "\$13",
                                style: TextStyle(
                                    fontSize: 19, color: Colors.black45),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Container(
                                height: 60,
                                width: 85,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          "https://media.istockphoto.com/photos/stack-of-clean-soft-colorful-towels-flowers-on-background-picture-id1139717201?k=20&m=1139717201&s=612x612&w=0&h=lszRCHRIYofCXFt66wSqGGQyH_d1iPJwHfT-rXBtXIQ=",
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  alignment: Alignment.centerLeft,
                                  height: 70,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Bath towels",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color(0xFF676DEE),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "set of three medium - sized towels",
                                        style: TextStyle(
                                            color: Color(0xFF676DEE),
                                            fontSize: 12),
                                        overflow: TextOverflow.ellipsis,
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.left,
                                        maxLines: 2,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                "\$20",
                                style: TextStyle(
                                    fontSize: 19, color: Colors.black45),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          height: 40,
                          child: RichText(
                            text: TextSpan(
                                text: "Subtotal (3 items)   ",
                                style: TextStyle(
                                    color: Color(0xFF676DEE), fontSize: 12),
                                children: [
                                  TextSpan(
                                      text: "\$67",
                                      style: TextStyle(
                                          color: Colors.black87, fontSize: 22))
                                ]),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 20,
                          child: Text(
                            "Club Member",
                            style: TextStyle(
                                color: Color(0xFFE87E4D), fontSize: 14),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xFFE87E4D),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "Check out",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 20,
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                                color: Color(0xFFE87E4D), fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
