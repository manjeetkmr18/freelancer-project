import 'package:flutter/material.dart';
import 'package:freelancer_project/widgets/seeall_button.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleWidget extends StatelessWidget {
  final String titletext;
  const TitleWidget({this.titletext});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titletext,
          style: GoogleFonts.inter().copyWith(
            fontSize: 19.13,
            color: Colors.black,
          ),
          textAlign: TextAlign.start,
        ),
        SeeALlButton()
      ],
    );
  }
}
