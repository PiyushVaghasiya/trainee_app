import 'package:flutter/material.dart';
import 'package:untitled/models/whatsapp_calls_model.dart';
import 'package:untitled/whatsapp_chats.dart';
import 'package:untitled/whatsapp_status.dart';

class PageviewDemo extends StatefulWidget {
  const PageviewDemo({Key? key}) : super(key: key);

  @override
  _PageviewDemoState createState() => _PageviewDemoState();
}

class _PageviewDemoState extends State<PageviewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          children: [
            WhatsappChats(),
            Whatsapp_status(),
          ],
        ),
      ),
    );
  }
}
