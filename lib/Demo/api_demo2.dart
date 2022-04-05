import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:untitled/models/api_demo_model.dart';

class FetchList extends StatefulWidget {
  const FetchList({Key? key}) : super(key: key);

  @override
  _FetchListState createState() => _FetchListState();
}

class _FetchListState extends State<FetchList> {
  ApidemoModel apidemoModel = ApidemoModel();
  bool isempty = true;
  List<ApidemoModel> userlist = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Flutter - API List "),
      ),
      body: Container(
        width: double.infinity,
        child: ListView.builder(
          itemCount: userlist.length,
          padding: EdgeInsets.all(8),
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("user id :"),
                      Text(userlist[index].userId.toString()),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("id :"),
                      Text(userlist[index].id.toString()),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("title:"),
                      Flexible(child: Text(userlist[index].title.toString())),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "body:",
                      ),
                      Flexible(
                        child: Text(
                          userlist[index].body.toString(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  getData() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      setState(() {
        data.map((e) => userlist.add(ApidemoModel.fromJson(e))).toList();
        isempty = false;
      });
    }
  }
}
