import 'package:flutter/material.dart';
import 'package:freelancer_project/screens/home/widgets/title_widget.dart';
import 'package:freelancer_project/widgets/custom_modelsheet.dart';
import 'package:freelancer_project/widgets/loadmore_button.dart';

import 'widgets/1950bafta.dart';
import 'widgets/1950cannes.dart';
import 'widgets/1970oscar.dart';
import 'widgets/best_director.dart';
import 'widgets/blog_section.dart';
import 'widgets/oscars1970.dart';
import 'widgets/video_section.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    _modalBottomSheetMenu();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF7F7F7),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Canness1950(),
                OscarMovies(),
                Bafta1950(),
                BestDirector(),
                Oscar1970(),
                Padding(
                  padding: EdgeInsets.only(bottom: 50.0),
                  child: Center(
                    child: LoadMore(
                      customwidth: MediaQuery.of(context).size.width * 0.5,
                      text: 'Load More',
                    ),
                  ),
                ),
                TitleWidget(
                  titletext: '1970 Oscar Award-Winning \nMovies',
                  pressed: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/lightimage.png',
                        fit: BoxFit.contain,
                        width: double.infinity,
                      ),
                      Text(
                        'Avengers: End Game(2020)',
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                ),
                TitleWidget(
                    titletext: '1970 Oscar Award-Winning \nMovies',
                    pressed: () {}),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/lightimagebig.png',
                        fit: BoxFit.contain,
                        width: double.infinity,
                      ),
                      Text(
                        'Avengers: End Game(2020)',
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: TitleWidget(
                    titletext: 'Recent Blog Posts',
                    pressed: () {},
                  ),
                ),
                BlogSection(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: VideoSection(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _modalBottomSheetMenu() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          isScrollControlled: true,
          backgroundColor: Colors.white,
          context: context,
          builder: (context) {
            return CustomModelSheet();
          });
    });
  }
}
