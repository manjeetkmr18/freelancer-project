import 'package:flutter/material.dart';
import 'package:freelancer_project/screens/home/widgets/title_widget.dart';
import 'package:freelancer_project/widgets/cardbox.dart';

class CommonSlider extends StatelessWidget {
  final String title;

  const CommonSlider({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWidget(
          titletext: title,
          pressed: () {},
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          height: 230.0,
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CardBox(
                height: 200,
                width: 125,
                imagewidth: 120,
                imagepath: 'assets/images/card-box3.png',
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
