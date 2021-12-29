import 'package:flutter/material.dart';

class Dialogdemo extends StatefulWidget {
  const Dialogdemo({Key? key}) : super(key: key);

  @override
  _DialogdemoState createState() => _DialogdemoState();
}

class _DialogdemoState extends State<Dialogdemo>
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

  final barColor = const Color(0xFF232121);
  final bColor = const Color(0xFF181717);
  final tbColor = const Color(0xFF4B4949);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                barrierDismissible: true,
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      decoration: BoxDecoration(
                        color: barColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 200, width: 400,
                      // width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Create an album",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: TextFormField(
                              keyboardType: TextInputType.multiline,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                              decoration: InputDecoration(
                                  fillColor: bColor,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: "Album name",
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 15)),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                child: Container(
                                  height: 40,
                                  width: 100,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: tbColor),
                                  child: Text(
                                    "Cancel",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                                onTap: () => Navigator.pop(context, 'Cancel'),
                              ),
                              InkWell(
                                child: Container(
                                  height: 40,
                                  width: 100,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: tbColor),
                                  child: Text(
                                    "Ok",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                                onTap: () => Navigator.pop(context, 'Ok'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                });
          },
          child: Text(
            "click here",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
