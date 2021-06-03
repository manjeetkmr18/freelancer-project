import 'package:flutter/material.dart';
import 'package:freelancer_project/screens/home/widgets/title_widget.dart';
import 'package:freelancer_project/widgets/cardbox.dart';

class Canness1950 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 10),
          child: TitleWidget(
            titletext: '1950 Cannes Film Festival\nAwards-Winning Movies',
          ),
        ),
        Container(
          height: 190.0,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CardBox(
                height: 240,
                width: 98,
                imageheight: 110,
                imagewidth: 76.9,
                imagepath: 'assets/images/card-box.png',
                text1: 'Avengers',
                text2: 'End Game(2020)',
              );
            },
          ),
        ),
      ],
    );
  }
}
