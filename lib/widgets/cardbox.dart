import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardBox extends StatelessWidget {
  final double height, width, imageheight, imagewidth;
  final String imagepath, text1, text2;

  const CardBox({
    this.height,
    this.width,
    this.imagepath,
    this.text1,
    this.text2,
    this.imageheight,
    this.imagewidth,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: imageheight,
            width: imagewidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            child: Image.asset(
              imagepath,
              fit: BoxFit.contain,
            ),
          ),
          Text(text1, style: GoogleFonts.inter().copyWith(fontSize: 11.94)),
          Text(text2, style: GoogleFonts.inter().copyWith(fontSize: 11.94))
        ],
      ),
    );
  }
}
