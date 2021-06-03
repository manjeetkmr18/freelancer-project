import 'package:flutter/material.dart';
import 'package:freelancer_project/screens/home/widgets/title_widget.dart';
import 'package:freelancer_project/widgets/cardbox.dart';

class Oscar1970 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWidget(
          titletext: '1970 Oscar Award-Winning \nMovies',
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          height: 280.0,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CardBox(
                height: 250,
                width: 190,
                imagewidth: 164.94,
                imageheight: 232.61,
                imagepath: 'assets/images/card-box5.png',
                text1: 'Avengers: End Game(2020)',
                text2: '',
              );
            },
          ),
        ),
      ],
    );
  }
}
