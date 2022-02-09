import 'package:flutter/material.dart';
import 'package:untitled/Constants/telegram_drawer_list.dart';

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
          backgroundColor: Color(0xFF293749),
          title: Text("Drawer demo"),
        ),
        drawer: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              color: Color(0xFF293749),
              height: 150,
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnJ674oDerpv_o40CjAus6xnGGV3hDGpmkRQ&usqp=CAU",
                                ),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle),
                      ),
                      Icon(
                        Icons.wb_sunny,
                        color: Colors.white,
                        size: 30,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Piyush Vaghasiya",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "+91 9909686314",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Color(0xFF1F242B),
                width: 300,
                child: ListView.builder(
                  itemCount: TelegramList.telegramlist.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(
                        TelegramList.telegramlist[index].tIcon,
                        color: Color(0xFF7B94B6),
                      ),
                      title: Text(
                        TelegramList.telegramlist[index].tOption.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
