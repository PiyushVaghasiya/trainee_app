import 'package:flutter/material.dart';
import 'package:untitled/Constants/whatsapp_calls_list.dart';
import 'package:untitled/Constants/whatsapp_chats_list.dart';
import 'package:untitled/Constants/whatsapp_status_list.dart';
import 'package:untitled/models/whatsapp_chats_model.dart';
import 'package:untitled/whatsapp_calls.dart';
import 'package:untitled/whatsapp_person_chat.dart';
import 'package:untitled/whatsapp_status.dart';

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
            PageView(
              children: [
                Container(
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
                                margin: EdgeInsets.only(
                                    top: 10, bottom: 10, left: 5),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        WhatsappChatsList
                                            .whatsappchat[index].cImages
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            WhatsappChatsList
                                                .whatsappchat[index].cName
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          Text(
                                            WhatsappChatsList
                                                .whatsappchat[index].cTime
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        WhatsappChatsList
                                            .whatsappchat[index].cMessage
                                            .toString(),
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Wppersonchat()));
                                },
                              )
                            ],
                          ),
                        );
                      }),
                ),
                // Container(
                //   child: Column(
                //     children: [
                //       Row(
                //         children: [
                //           Container(
                //             margin: EdgeInsets.all(10),
                //             height: 55,
                //             width: 55,
                //             decoration: BoxDecoration(
                //               shape: BoxShape.circle,
                //               image: DecorationImage(
                //                   image: NetworkImage(
                //                       "https://c.ndtvimg.com/2021-09/3a76mb38_cristiano-ronaldo-afp_625x300_11_September_21.jpg"),
                //                   fit: BoxFit.cover),
                //             ),
                //           ),
                //           Container(
                //             alignment: Alignment.center,
                //             child: Column(
                //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 Text(
                //                   "My status",
                //                   textAlign: TextAlign.left,
                //                   style: TextStyle(
                //                     color: Colors.white,
                //                     fontSize: 17,
                //                   ),
                //                 ),
                //                 Text(
                //                   "Tap to add status update",
                //                   textAlign: TextAlign.left,
                //                   style:
                //                       TextStyle(color: Colors.grey, fontSize: 15),
                //                 ),
                //               ],
                //             ),
                //           )
                //         ],
                //       ),
                //       Container(
                //         height: 30,
                //         alignment: Alignment.centerLeft,
                //         child: Text(
                //           "Recent updates",
                //           textAlign: TextAlign.left,
                //           style: TextStyle(fontSize: 15, color: Colors.grey),
                //         ),
                //       ),
                //       Expanded(
                //         child: ListView.builder(
                //             scrollDirection: Axis.vertical,
                //             shrinkWrap: true,
                //             itemCount: WhatsappStatusList.whatsappstatus.length,
                //             itemBuilder: (context, index) {
                //               return Container(
                //                 child: Row(
                //                   children: [
                //                     Container(
                //                       margin: EdgeInsets.all(10),
                //                       child: Container(
                //                         height: 55,
                //                         width: 55,
                //                         decoration: BoxDecoration(
                //                           border: Border.all(
                //                               color: Colors.black,
                //                               // color: Color(0xFF2F845C)
                //                               width: 2),
                //                           shape: BoxShape.circle,
                //                           image: DecorationImage(
                //                               image: NetworkImage(
                //                                   WhatsappStatusList
                //                                       .whatsappstatus[index]
                //                                       .sImages
                //                                       .toString()),
                //                               fit: BoxFit.cover),
                //                         ),
                //                       ),
                //                       decoration: BoxDecoration(
                //                           shape: BoxShape.circle,
                //                           border: Border.all(
                //                               color: Color(0xFF128C7E),
                //                               width: 2)),
                //                     ),
                //                     Container(
                //                       alignment: Alignment.center,
                //                       child: Column(
                //                         mainAxisAlignment:
                //                             MainAxisAlignment.spaceEvenly,
                //                         crossAxisAlignment:
                //                             CrossAxisAlignment.start,
                //                         children: [
                //                           Text(
                //                             WhatsappStatusList
                //                                 .whatsappstatus[index].sName
                //                                 .toString(),
                //                             textAlign: TextAlign.left,
                //                             style: TextStyle(
                //                               color: Colors.white,
                //                               fontSize: 17,
                //                             ),
                //                           ),
                //                           Text(
                //                             WhatsappStatusList
                //                                 .whatsappstatus[index].sTime
                //                                 .toString(),
                //                             textAlign: TextAlign.left,
                //                             style: TextStyle(
                //                                 color: Colors.grey, fontSize: 15),
                //                           ),
                //                         ],
                //                       ),
                //                     )
                //                   ],
                //                 ),
                //               );
                //             }),
                //       ),
                //     ],
                //   ),
                // ),
                // Container(
                //   child: Expanded(
                //     child: ListView.builder(
                //         scrollDirection: Axis.vertical,
                //         shrinkWrap: true,
                //         itemCount: WhatsappCallsList.whatsappcalls.length,
                //         itemBuilder: (context, index) {
                //           return Container(
                //             margin: EdgeInsets.only(top: 3),
                //             child: Row(
                //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //               children: [
                //                 Container(
                //                   margin: EdgeInsets.all(10),
                //                   child: Container(
                //                     height: 55,
                //                     width: 55,
                //                     decoration: BoxDecoration(
                //                       shape: BoxShape.circle,
                //                       image: DecorationImage(
                //                           image: NetworkImage(WhatsappCallsList
                //                               .whatsappcalls[index].cImages
                //                               .toString()),
                //                           fit: BoxFit.cover),
                //                     ),
                //                   ),
                //                 ),
                //                 Expanded(
                //                   child: Container(
                //                     margin: EdgeInsets.all(5),
                //                     alignment: Alignment.center,
                //                     child: Column(
                //                       mainAxisAlignment:
                //                           MainAxisAlignment.spaceEvenly,
                //                       crossAxisAlignment:
                //                           CrossAxisAlignment.start,
                //                       children: [
                //                         Text(
                //                           WhatsappCallsList
                //                               .whatsappcalls[index].cName
                //                               .toString(),
                //                           textAlign: TextAlign.left,
                //                           style: TextStyle(
                //                             color: Colors.white,
                //                             fontSize: 17,
                //                           ),
                //                         ),
                //                         Row(
                //                           children: [
                //                             Icon(
                //                               Icons.call_made,
                //                               color: Color(0xFF128C7E),
                //                             ),
                //                             Text(
                //                               WhatsappCallsList
                //                                   .whatsappcalls[index].cTime
                //                                   .toString(),
                //                               textAlign: TextAlign.left,
                //                               style: TextStyle(
                //                                   color: Colors.grey,
                //                                   fontSize: 15),
                //                             ),
                //                           ],
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Container(
                //                   margin: EdgeInsets.only(right: 5),
                //                   child: Icon(
                //                     WhatsappCallsList.whatsappcalls[index].cIcon,
                //                     color: Color(0xFF128C7E),
                //                     size: 30,
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           );
                //         }),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
