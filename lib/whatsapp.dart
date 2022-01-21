import 'package:flutter/material.dart';
import 'package:untitled/Constants/whatsapp_chats_list.dart';
import 'package:untitled/models/whatsapp_chats.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({Key? key}) : super(key: key);

  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    WhatsappChats whatsappChats = WhatsappChats();
    return Scaffold(
      backgroundColor: Color(0xFF1F242B),
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 5, right: 5),
        child: Column(
          children: [
            Container(
              color: Color(0xFF293749),
              alignment: Alignment.center,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      "WhatsApp",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.more_vert_outlined,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xFF293749),
              height: 50,
              child: Row(
                children: [
                  Icon(
                    Icons.camera_alt,
                    color: Colors.grey,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text(
                            "CHATS",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Text(
                            "STATUS",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Text(
                            "CALLS",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: WhatsappChatsList.whatsappchat.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                WhatsappChatsList.whatsappchat[index].cImages
                                    .toString(),
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 280,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  WhatsappChatsList.whatsappchat[index].cName
                                      .toString(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                Text(
                                  WhatsappChatsList.whatsappchat[index].cTime
                                      .toString(),
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                WhatsappChatsList.whatsappchat[index].cTime
                                    .toString(),
                                textAlign: TextAlign.left,
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }
}
