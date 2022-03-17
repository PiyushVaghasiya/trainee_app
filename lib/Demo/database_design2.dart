import 'package:flutter/material.dart';
import 'package:untitled/models/database_cart_model.dart';

import 'cartdatabase.dart';

class DatabaseAddDesign extends StatefulWidget {
  const DatabaseAddDesign({Key? key}) : super(key: key);

  @override
  _DatabaseAddDesignState createState() => _DatabaseAddDesignState();
}

class _DatabaseAddDesignState extends State<DatabaseAddDesign> {
  late DB db;

  List<DatabaseCartModel> datalist = [
    DatabaseCartModel(
      Id: 1,
        Images:
            "https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395__480.jpg",
        Title: "Pizza",
        Description:
            "Pizza is a savory dish of italian origin consisting of all elements",
        Counter: 0),
    DatabaseCartModel(Id: 2,
        Images:
            "https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
        Title: "Burger",
        Description:
            "Burger is a savory dish of italian origin consisting of all elements",
        Counter: 0),
    DatabaseCartModel(Id: 3,
        Images:
            "https://im1.dineout.co.in/images/uploads/restaurant/sharpen/6/x/p/p6816-15811593495e3e93b50466a.jpg?tr=tr:n-xlarge",
        Title: "Pizza",
        Description:
            "Pizza is a savory dish of italian origin consisting of all elements",
        Counter: 0),
    DatabaseCartModel(Id: 4,
        Images:
            "https://img.freepik.com/free-photo/top-view-pepperoni-pizza-sliced-into-six-slices_141793-2157.jpg?size=626&ext=jpg",
        Title: "Pizza",
        Description:
            "Pizza is a savory dish of italian origin consisting of all elements",
        Counter: 0),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    db = DB();

  }

  void getdata() async {
    datalist = await db.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: GridView.builder(
        itemCount: datalist.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 260,
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
                            datalist[index].Images.toString(),
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
                                        datalist[index].Title.toString(),
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontFamily: "Rye",
                                            color: Colors.black,
                                            fontSize: 13),
                                      ),
                                    ),
                                    Text(
                                      datalist[index].Description.toString(),
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
                  ),
                  SizedBox(height: 5),
                  datalist[index].Counter != 0
                      ? Container(
                          color: Colors.blue,
                          alignment: Alignment.center,
                          height: 35,
                          width: 110,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    datalist[index].Counter =
                                        datalist[index].Counter! - 1;
                                    db.update(datalist[index].Counter!, index);
                                  });

                                  print(datalist[index].Counter);
                                },
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              Text(datalist[index].Counter.toString()),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    datalist[index].Counter =
                                        datalist[index].Counter! + 1;
                                    db.update(datalist[index].Counter!, index);
                                  });

                                  print(datalist[index].Counter);
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        )
                      : InkWell(
                          child: Container(
                            color: Colors.blue,
                            alignment: Alignment.center,
                            height: 30,
                            width: 60,
                            child: Text("Add"),
                          ),
                          onTap: () {
                            setState(() {
                              datalist[index].Counter =
                                  (datalist[index].Counter! + 1);
                            });
                            db.insertData(
                              DatabaseCartModel(
                                Images: datalist[index].Images,
                                Title: datalist[index].Title,
                                Description: datalist[index].Description,
                                Counter: datalist[index].Counter,
                              ),
                            );
                            print(datalist[index].Counter);
                          },
                        ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
