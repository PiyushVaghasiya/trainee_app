import 'package:flutter/material.dart';
import 'package:untitled/Constants/whatsapp_calls_list.dart';
import 'package:untitled/whatsapp_chats.dart';
import 'package:untitled/whatsapp_status.dart';

class WhatsappCalls extends StatefulWidget {
  const WhatsappCalls({Key? key}) : super(key: key);

  @override
  _WhatsappCallsState createState() => _WhatsappCallsState();
}

class _WhatsappCallsState extends State<WhatsappCalls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F242B),
      body: Container(
        margin: EdgeInsets.only(left: 5, right: 5),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: WhatsappCallsList.whatsappcalls.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(top: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(WhatsappCallsList
                                  .whatsappcalls[index].cImages
                                  .toString()),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              WhatsappCallsList.whatsappcalls[index].cName
                                  .toString(),
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.call_made,
                                  color: Color(0xFF128C7E),
                                ),
                                Text(
                                  WhatsappCallsList.whatsappcalls[index].cTime
                                      .toString(),
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Icon(
                        WhatsappCallsList.whatsappcalls[index].cIcon,
                        color: Color(0xFF128C7E),
                        size: 30,
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
