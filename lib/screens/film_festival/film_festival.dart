import 'package:flutter/material.dart';
import 'package:freelancer_project/screens/film_festival/widgets/films_slider.dart';
import 'package:freelancer_project/widgets/loadmore_button.dart';

// ignore: must_be_immutable
class FilmFestival extends StatelessWidget {
  List<String> btnNames = ['GOLDEN BEAR', 'SILVER BEAR', 'CRYSTAL BEAR'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.black,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  // padding: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  padding: const EdgeInsets.only(
                    left: 25.0,
                    right: 25.0,
                    top: 10,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
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
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/images/berlin.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Berlin International Film \nFestival Awards dsadsad',
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                      ),
                                    ),
                                    ElevatedButton.icon(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: 1,
                                                style: BorderStyle.solid),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 1, horizontal: 10),
                                        primary: Colors.black,
                                      ),
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.visibility,
                                        color: Colors.white,
                                      ),
                                      label: Text('Add to Favourites'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
                          style: TextStyle(fontSize: 16),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 15.0, bottom: 15.0),
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 10.0),
                            height: 40.0,
                            child: ListView.builder(
                              itemCount: btnNames.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8.0),
                                  child: Container(
                                    height: 28,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 18.0,
                                        right: 18.0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.visibility,
                                              color: Colors.white, size: 12),
                                          Text(
                                            btnNames[index],
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        CommonSlider(
                          title: 'Best Motion Picture',
                        ),
                        CommonSlider(
                          title: 'Best Short Film',
                        ),
                        CommonSlider(
                          title: 'Best Short Film',
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 50.0),
                          child: Center(
                            child: LoadMore(
                              customwidth:
                                  MediaQuery.of(context).size.width * 0.5,
                              text: 'Load More',
                            ),
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
