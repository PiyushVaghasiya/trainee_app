import 'package:flutter/material.dart';
import 'package:gallery_view/gallery_view.dart';

class Image_gallery_view extends StatefulWidget {
  const Image_gallery_view({Key? key}) : super(key: key);

  @override
  _Image_gallery_viewState createState() => _Image_gallery_viewState();
}

class _Image_gallery_viewState extends State<Image_gallery_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: GalleryView(
        //     imageUrlList:[
        //       "https://images.unsplash.com/photo-1500100586562-f75ff6540087?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
        //       "https://images.unsplash.com/photo-1523719185231-aff40a400361?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
        //     ],
        // ),
      ),
    );
  }
}
