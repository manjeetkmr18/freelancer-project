import 'package:flutter/material.dart';
import 'package:freelancer_project/screens/home/widgets/title_widget.dart';
import 'package:freelancer_project/widgets/cardbox.dart';

class BestDirector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWidget(
          titletext: 'Best Director in 15th Emmy \nAwards',
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          height: 220.0,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CardBox(
                height: 180,
                width: 190,
                imagewidth: 180,
                imageheight: 160,
                imagepath: 'assets/images/card-box4.png',
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
