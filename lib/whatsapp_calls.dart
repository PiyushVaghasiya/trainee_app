import 'package:flutter/material.dart';
import 'package:untitled/Constants/whatsapp_calls_list.dart';
import 'package:untitled/whatsapp.dart';
import 'package:untitled/whatsapp_status.dart';

class WhatsappCalls extends StatefulWidget {
  const WhatsappCalls({Key? key}) : super(key: key);

  @override
  _WhatsappCallsState createState() => _WhatsappCallsState();
}

num var1 = 12;

class _WhatsappCallsState extends State<WhatsappCalls> {
  @override
  Widget build(BuildContext context) {
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
                        InkWell(
                          child: Container(
                            child: Text(
                              "CHATS",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Whatsapp()));
                          },
                        ),
                        InkWell(
                          child: Container(
                            child: Text(
                              "STATUS",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Whatsapp_status()));
                          },
                        ),
                        InkWell(
                          child: Container(
                            child: Text(
                              "CALLS",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WhatsappCalls()));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: WhatsappCallsList.whatsappcalls.length,
                  itemBuilder: (context, index) {
                    return Container(margin: EdgeInsets.only(top: 3),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                        WhatsappCallsList
                                            .whatsappcalls[index].cTime
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
                            child: Icon(
                              Icons.video_call,
                              color: Color(0xFF128C7E),
                              size: 35,
                            ),
                          ),
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
