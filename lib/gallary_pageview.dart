import 'package:flutter/material.dart';
import 'package:gesture_zoom_box/gesture_zoom_box.dart';
import 'package:pinch_zoom/pinch_zoom.dart';
import 'package:zoom_pinch_overlay/zoom_pinch_overlay.dart';
import 'package:zoom_widget/zoom_widget.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';

class Gallery_pageview extends StatefulWidget {
  const Gallery_pageview({Key? key}) : super(key: key);

  @override
  _Gallery_pageviewState createState() => _Gallery_pageviewState();
}

class _Gallery_pageviewState extends State<Gallery_pageview> {
  List<String> img = [
    "https://www.chhotabheem.com/image/catalog/wallpaper/1280x1024/series_03.jpg",
    "https://m.media-amazon.com/images/I/51I3+UiA8bL.jpg"
  ];
  PageController pagecontroller = PageController();
  int curindex = 0;
  final List<ImageProvider> _imageProviders = [
    Image.network("https://picsum.photos/id/1001/5616/3744").image,
    Image.network("https://picsum.photos/id/1003/1181/1772").image,
    Image.network("https://picsum.photos/id/1004/5616/3744").image,
    Image.network("https://picsum.photos/id/1005/5760/3840").image
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF232121),
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            "Gallery",
            style: TextStyle(color: Colors.white),
          ),
        ),
        // body: Column(
        //   children: [
        //     Container(
        //       padding: EdgeInsets.all(10),
        //       height: 500,
        //       width: double.infinity,
        //       child: ZoomOverlay(
        //         minScale: 0.5, // Optional
        //         maxScale: 3.0, // Optional
        //         twoTouchOnly: true,
        //         child: PageView.builder(
        //           itemCount: img.length,
        //           onPageChanged: (index) {
        //             setState(() {
        //               curindex = index;
        //             });
        //           },
        //           itemBuilder: (context, index) {
        //             return Container(
        //               margin: EdgeInsets.only(left: 10, right: 10),
        //               height: 500,
        //               decoration: BoxDecoration(
        //                 image: DecorationImage(
        //                     image: NetworkImage(img[curindex].toString()),
        //                     fit: BoxFit.cover),
        //               ),
        //             );
        //           },
        //         ),
        //       ),
        //     ),
        //     Container(
        //       padding: EdgeInsets.all(10),
        //       height: 80,
        //       width: double.infinity,
        //       child: ListView.builder(
        //         scrollDirection: Axis.horizontal,
        //         shrinkWrap: true,
        //         itemCount: img.length,
        //         itemBuilder: (context, index) {
        //           return InkWell(
        //             child: Container(
        //               margin: EdgeInsets.only(left: 5, right: 5),
        //               width: curindex == index ? 70 : 60,
        //               decoration: BoxDecoration(
        //                 color: Colors.blue,
        //                 borderRadius: BorderRadius.circular(10),
        //                 image: DecorationImage(
        //                     image: NetworkImage(img[index].toString()),
        //                     fit: BoxFit.cover),
        //               ),
        //             ),
        //             onTap: () {
        //               setState(() {
        //                 curindex = index;
        //               });
        //             },
        //           );
        //         },
        //       ),
        //     ),
        //   ],
        // ),

        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     ElevatedButton(
        //         child: const Text("Show Multiple Images (Simple)"),
        //         onPressed: () {
        //           MultiImageProvider multiImageProvider =
        //               MultiImageProvider(_imageProviders);
        //           showImageViewerPager(context, multiImageProvider);
        //         }),
        //   ],
        // ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureZoomBox(
              maxScale: 5.0,
              doubleTapScale: 2.0,
              duration: Duration(milliseconds: 200),
              child: Image.network(
                  "https://m.media-amazon.com/images/I/51I3+UiA8bL.jpg"),
            ),
          ],
        ),


        // body: Column(
        //   children: [
        //     Container(height: 400,width: 400,
        //       child: PinchZoom(
        //         child: Image.network('https://placekitten.com/640/360',fit: BoxFit.cover,),
        //         resetDuration: const Duration(milliseconds: 100),
        //         maxScale: 2.5,
        //         onZoomStart: (){print('Start zooming');},
        //         onZoomEnd: (){print('Stop zooming');},
        //       ),
        //     )
        //   ],
        // ),



      ),
    );
  }
}
