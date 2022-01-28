import 'package:flutter/material.dart';
import 'package:untitled/Constants/whatsapp_chats_list.dart';
import 'package:untitled/whatsapp_person_chat.dart';

class WhatsappChats extends StatefulWidget {
  const WhatsappChats({Key? key}) : super(key: key);

  @override
  _WhatsappChatsState createState() => _WhatsappChatsState();
}

class _WhatsappChatsState extends State<WhatsappChats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:  Color(0xFF1F242B),
      body: Container(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: WhatsappChatsList.whatsappchat.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: 2, right: 5),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10, left: 5),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                              WhatsappChatsList.whatsappchat[index].cImages
                                  .toString(),
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        alignment: Alignment.center,
                        height: 45,
                        width: 260,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                            Text(
                              WhatsappChatsList.whatsappchat[index].cMessage
                                  .toString(),
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Wppersonchat()));
                      },
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
