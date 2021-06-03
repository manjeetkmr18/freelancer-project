import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeeALlButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(50)),
        padding: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
        primary: Colors.black,
      ),
      onPressed: () {},
      icon: Icon(
        Icons.visibility,
        color: Colors.white,
        size: 13.5,
      ),
      label: Text(
        'SEE ALL',
        style: GoogleFonts.inter().copyWith(fontSize: 9),
      ),
    );
  }
}
