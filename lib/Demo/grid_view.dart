import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GridViewDemo extends StatefulWidget {
  const GridViewDemo({Key? key}) : super(key: key);

  @override
  _GridViewDemoState createState() => _GridViewDemoState();
}

List<String> netimg = [
  "https://e0.365dm.com/21/11/768x432/skysports-cristiano-ronaldo_5569575.jpg",
  "https://e0.365dm.com/21/11/768x432/skysports-cristiano-ronaldo_5569575.jpg",
  "https://qph.fs.quoracdn.net/main-qimg-c7a526dfad7e78f9062521efd0a3ea70-c",
  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmVhdXRpZnVsJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
  "https://st.depositphotos.com/1003697/4971/i/600/depositphotos_49719803-stock-photo-business-man-working-on-laptop.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnJ674oDerpv_o40CjAus6xnGGV3hDGpmkRQ&usqp=CAU",
  "https://www.nawpic.com/media/2020/cool-backgrounds-nawpic-500x931.jpg",
  "https://qph.fs.quoracdn.net/main-qimg-c7a526dfad7e78f9062521efd0a3ea70-c",
  "https://t3.ftcdn.net/jpg/02/94/62/14/360_F_294621430_9dwIpCeY1LqefWCcU23pP9i11BgzOS0N.jpg",
  "https://e0.365dm.com/21/11/768x432/skysports-cristiano-ronaldo_5569575.jpg",
  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmVhdXRpZnVsJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
  "https://qph.fs.quoracdn.net/main-qimg-c7a526dfad7e78f9062521efd0a3ea70-c",
  "https://st.depositphotos.com/1003697/4971/i/600/depositphotos_49719803-stock-photo-business-man-working-on-laptop.jpg",
  "https://e0.365dm.com/21/11/768x432/skysports-cristiano-ronaldo_5569575.jpg",
  "https://qph.fs.quoracdn.net/main-qimg-c7a526dfad7e78f9062521efd0a3ea70-c",
  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmVhdXRpZnVsJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
  "https://st.depositphotos.com/1003697/4971/i/600/depositphotos_49719803-stock-photo-business-man-working-on-laptop.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnJ674oDerpv_o40CjAus6xnGGV3hDGpmkRQ&usqp=CAU",
  "https://www.nawpic.com/media/2020/cool-backgrounds-nawpic-500x931.jpg",
  "https://qph.fs.quoracdn.net/main-qimg-c7a526dfad7e78f9062521efd0a3ea70-c",
  "https://t3.ftcdn.net/jpg/02/94/62/14/360_F_294621430_9dwIpCeY1LqefWCcU23pP9i11BgzOS0N.jpg",
  "https://e0.365dm.com/21/11/768x432/skysports-cristiano-ronaldo_5569575.jpg",
  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmVhdXRpZnVsJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
  "https://qph.fs.quoracdn.net/main-qimg-c7a526dfad7e78f9062521efd0a3ea70-c",
  "https://st.depositphotos.com/1003697/4971/i/600/depositphotos_49719803-stock-photo-business-man-working-on-laptop.jpg",
];

class _GridViewDemoState extends State<GridViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          child: Column(
            children: [
              // GridView.builder(
              //     itemCount: netimg.length,
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //         crossAxisSpacing: 2,
              //         mainAxisSpacing: 2,
              //         crossAxisCount: 3),
              //     itemBuilder: (BuildContext context, int index) {
              //       return Container(
              //         alignment: Alignment.center,
              //         child: Image.network(
              //           netimg[index],
              //           fit: BoxFit.fill,
              //         ),
              //       );
              //     }),
              // GridView(
              //   shrinkWrap: true,
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisSpacing: 2, crossAxisCount: 3),
              //   children: [
              //     Container(
              //       alignment: Alignment.center,
              //       child: Image.network(
              //         "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80",
              //         fit: BoxFit.fill,
              //       ),
              //     ),
              //     Container(
              //       alignment: Alignment.center,
              //       child: Image.network(
              //         "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80",
              //         fit: BoxFit.fill,
              //       ),
              //     ),
              //     Container(
              //       alignment: Alignment.center,
              //       child: Image.network(
              //         "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80",
              //         fit: BoxFit.fill,
              //       ),
              //     ),
              //     Container(
              //       alignment: Alignment.center,
              //       child: Image.network(
              //         "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80",
              //         fit: BoxFit.fill,
              //       ),
              //     ),
              //     Container(
              //       alignment: Alignment.center,
              //       child: Image.network(
              //         "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80",
              //         fit: BoxFit.fill,
              //       ),
              //     ),
              //     Container(
              //       alignment: Alignment.center,
              //       child: Image.network(
              //         "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80",
              //         fit: BoxFit.fill,
              //       ),
              //     ),
              //     Container(
              //       alignment: Alignment.center,
              //       child: Image.network(
              //         "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80",
              //         fit: BoxFit.fill,
              //       ),
              //     ),
              //     Container(
              //       alignment: Alignment.center,
              //       child: Image.network(
              //         "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80",
              //         fit: BoxFit.fill,
              //       ),
              //     ),
              //     Container(
              //       alignment: Alignment.center,
              //       child: Image.network(
              //         "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80",
              //         fit: BoxFit.fill,
              //       ),
              //     ),
              //     Container(
              //       alignment: Alignment.center,
              //       child: Image.network(
              //         "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80",
              //         fit: BoxFit.fill,
              //       ),
              //     ),
              //     Container(
              //       alignment: Alignment.center,
              //       child: Image.network(
              //         "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80",
              //         fit: BoxFit.fill,
              //       ),
              //     ),
              //     Container(
              //       alignment: Alignment.center,
              //       child: Image.network(
              //         "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80",
              //         fit: BoxFit.fill,
              //       ),
              //     ),
              //   ],
              // ),

              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  // child: StaggeredGrid.count(
                  //   crossAxisCount: 4,
                  //   mainAxisSpacing: 4,
                  //   crossAxisSpacing: 4,
                  //   children: [
                  //     StaggeredGridTile.count(
                  //       crossAxisCellCount: 2,
                  //       mainAxisCellCount: 2,
                  //       child: Container(
                  //         color: Colors.red,
                  //         alignment: Alignment.center,
                  //         child: Image.network(
                  //           "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80",
                  //           fit: BoxFit.fill,
                  //         ),
                  //       ),
                  //     ),
                  //     StaggeredGridTile.count(
                  //       crossAxisCellCount: 2,
                  //       mainAxisCellCount: 1,
                  //       child: Container(
                  //         color: Colors.blue,
                  //         alignment: Alignment.center,
                  //         child: Image.network(
                  //           "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80",
                  //           fit: BoxFit.fill,
                  //         ),
                  //       ),
                  //     ),
                  //     StaggeredGridTile.count(
                  //       crossAxisCellCount: 1,
                  //       mainAxisCellCount: 1,
                  //       child: Container(
                  //         color: Colors.black,
                  //         alignment: Alignment.center,
                  //         child: Image.network(
                  //           "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80",
                  //           fit: BoxFit.fill,
                  //         ),
                  //       ),
                  //     ),
                  //     StaggeredGridTile.count(
                  //       crossAxisCellCount: 1,
                  //       mainAxisCellCount: 2,
                  //       child: Container(
                  //         color: Colors.green,
                  //         alignment: Alignment.center,
                  //         child: Image.network(
                  //           "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80",
                  //           fit: BoxFit.fill,
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  //
                  // child: GridView.custom(
                  //   gridDelegate: SliverQuiltedGridDelegate(
                  //     crossAxisCount: 4,
                  //     mainAxisSpacing: 4,
                  //     crossAxisSpacing: 4,
                  //     repeatPattern: QuiltedGridRepeatPattern.inverted,
                  //     pattern: [
                  //       QuiltedGridTile(2, 2),
                  //       QuiltedGridTile(1, 1),
                  //       QuiltedGridTile(1, 1),
                  //       QuiltedGridTile(1, 2),
                  //     ],
                  //   ),
                  //   childrenDelegate: SliverChildBuilderDelegate(
                  //     (context, index) => Container(
                  //       color: Colors.blue.shade200,
                  //       height: 100,
                  //       width: 100,
                  //     ),
                  //   ),
                  // ),
                  // child: GridView.custom(
                  //   gridDelegate: SliverWovenGridDelegate.count(
                  //     crossAxisCount: 4,
                  //     mainAxisSpacing: 8,
                  //     crossAxisSpacing: 8,
                  //     pattern: [
                  //       WovenGridTile(1),
                  //       WovenGridTile(
                  //         4 / 7,
                  //         crossAxisRatio: 0.9,
                  //         alignment: AlignmentDirectional.centerEnd,
                  //       ),
                  //     ],
                  //   ),
                  //   childrenDelegate: SliverChildBuilderDelegate(
                  //       (context, index) => Container(
                  //             height: 100,
                  //             width: 100,
                  //             color: Colors.orange.shade200,
                  //           )),
                  // ),
                  child: GridView.custom(
                    gridDelegate: SliverStairedGridDelegate(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      startCrossAxisDirectionReversed: true,
                      pattern: [
                        StairedGridTile(0.5, 1),
                        StairedGridTile(0.5, 3 / 4),
                        StairedGridTile(1.0, 10 / 4),
                      ],
                    ),
                    childrenDelegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(netimg[index]),
                                fit: BoxFit.fill),
                          ),
                          height: 100,
                          width: 100,
                        );
                      },
                      childCount: netimg.length,
                    ),
                  ),
                  // child: AlignedGridView.count(itemCount: netimg.length,
                  //   crossAxisCount: 4,
                  //   mainAxisSpacing: 4,
                  //   crossAxisSpacing: 4,
                  //   itemBuilder: (context, index) {
                  //     return Container(
                  //       decoration: BoxDecoration(
                  //         image: DecorationImage(
                  //             image: NetworkImage(netimg[index]),
                  //             fit: BoxFit.fill),
                  //       ),
                  //       height: 100,
                  //       width: 100,
                  //     );
                  //   },
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
