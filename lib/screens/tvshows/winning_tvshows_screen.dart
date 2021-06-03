import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/show_widget.dart';

class WinningTvShows extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> widgetList = ['A', 'B', 'C', 'd', 'A', 'B', 'C', 'd'];
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.black,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25.0,
                            right: 25.0,
                            top: 10,
                          ),
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  width: 20,
                                  child: Divider(
                                    thickness: 4,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '1950 Black & White Award-\nWinning TV-Shows',
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 19.13,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.share_outlined,
                                      color: Colors.black,
                                      size: 40,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.cancel,
                                      color: Colors.black,
                                      size: 40,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 15.0),
                        //   child: Column(
                        //     children: [
                        //       Row(
                        //         mainAxisAlignment:
                        //             MainAxisAlignment.spaceBetween,
                        //         children: [
                        //           Expanded(child: TvShowWidget()),
                        //           SizedBox(width: 2),
                        //           Expanded(child: TvShowWidget())
                        //         ],
                        //       ),
                        //       SizedBox(
                        //         height: 10,
                        //       ),
                        //       Row(
                        //         mainAxisAlignment:
                        //             MainAxisAlignment.spaceBetween,
                        //         children: [
                        //           Expanded(child: TvShowWidget()),
                        //           SizedBox(width: 2),
                        //           Expanded(
                        //             child: TvShowWidget(),
                        //           ),
                        //         ],
                        //       ),
                        //       SizedBox(
                        //         height: 10,
                        //       ),
                        //       Row(
                        //         mainAxisAlignment:
                        //             MainAxisAlignment.spaceBetween,
                        //         children: [
                        //           Expanded(child: TvShowWidget()),
                        //           SizedBox(width: 2),
                        //           Expanded(
                        //             child: TvShowWidget(),
                        //           ),
                        //         ],
                        //       )
                        //     ],
                        //   ),
                        // ),

                        Container(
                          padding: EdgeInsets.only(
                            left: 25.0,
                            right: 25.0,
                            top: 10,
                          ),
                          child: GridView.count(
                            crossAxisCount: 2,
                            childAspectRatio: (itemWidth / itemHeight),
                            // padding: EdgeInsets.all(8),
                            crossAxisSpacing: 10,
                            // mainAxisSpacing: 10,
                            controller:
                                ScrollController(keepScrollOffset: false),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: widgetList.map((String value) {
                              return TvShowWidget();
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
