import 'package:flutter/material.dart';

class DownloadImageDemo extends StatefulWidget {
  const DownloadImageDemo({Key? key}) : super(key: key);

  @override
  _DownloadImageDemoState createState() => _DownloadImageDemoState();
}

class _DownloadImageDemoState extends State<DownloadImageDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("download image from internet")),
      body: Column(
        children: [
          Image.network(
            "https://www.stockvault.net/data/2011/05/31/124348/thumb16.jpg",
            height: 600,
            fit: BoxFit.fill,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {}, label: Icon(Icons.download)),
    );
  }
}
