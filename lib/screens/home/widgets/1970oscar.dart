import 'package:flutter/material.dart';
import 'package:freelancer_project/screens/home/widgets/title_widget.dart';
import 'package:freelancer_project/widgets/cardbox.dart';

class OscarMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWidget(
          titletext: '1970 Oscar Award-Winning \nMovies',
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          height: 140.0,
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CardBox(
                height: 160,
                width: 130,
                imagewidth: 115,
                imagepath: 'assets/images/card-box2.png',
                text1: 'Avengers: End',
                text2: 'Game(2020)',
              );
            },
          ),
        ),
      ],
    );
  }
}
