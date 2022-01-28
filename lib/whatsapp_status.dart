import 'package:flutter/material.dart';
import 'package:untitled/Constants/whatsapp_calls_list.dart';
import 'package:untitled/Constants/whatsapp_chats_list.dart';
import 'package:untitled/Constants/whatsapp_status_list.dart';
import 'package:untitled/whatsapp_chats.dart';
import 'package:untitled/whatsapp_calls.dart';
import 'package:untitled/whatsapp_person_chat.dart';

class Whatsapp_status extends StatefulWidget {
  const Whatsapp_status({Key? key}) : super(key: key);

  @override
  _Whatsapp_statusState createState() => _Whatsapp_statusState();
}

class _Whatsapp_statusState extends State<Whatsapp_status> {
  PageController pageController = PageController(initialPage: 1);
  int pageindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F242B),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://c.ndtvimg.com/2021-09/3a76mb38_cristiano-ronaldo-afp_625x300_11_September_21.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My status",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        "Tap to add status update",
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: 30,
              alignment: Alignment.centerLeft,
              child: Text(
                "Recent updates",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: WhatsappStatusList.whatsappstatus.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    // color: Color(0xFF2F845C)
                                    width: 2),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(WhatsappStatusList
                                        .whatsappstatus[index].sImages
                                        .toString()),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color(0xFF128C7E), width: 2)),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  WhatsappStatusList.whatsappstatus[index].sName
                                      .toString(),
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                                Text(
                                  WhatsappStatusList.whatsappstatus[index].sTime
                                      .toString(),
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
