import 'package:flutter/material.dart';

class DatabaseAddDesign extends StatefulWidget {
  const DatabaseAddDesign({Key? key}) : super(key: key);

  @override
  _DatabaseAddDesignState createState() => _DatabaseAddDesignState();
}

class _DatabaseAddDesignState extends State<DatabaseAddDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: GridView.builder(
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 240,
          crossAxisCount: 2,
          mainAxisSpacing: 5,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(10),
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      image: DecorationImage(
                          image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395__480.jpg",
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 10, bottom: 5),
                            child: Column(
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 3),
                                      child: Text(
                                        "Italian Pizza",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontFamily: "Rye",
                                            color: Colors.black,
                                            fontSize: 13),
                                      ),
                                    ),
                                    Text(
                                      "Pizza is a savory dish of italian origin consisting of all elements",
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
                        ]),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
