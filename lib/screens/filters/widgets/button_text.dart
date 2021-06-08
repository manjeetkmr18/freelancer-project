import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
 final String text;
 final double height;
 final double width;
 final double fontSize;
 final void Function() onPressed;

  const ButtonText({Key key, this.text, this.height, this.width, this.fontSize, this.onPressed}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        width: width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(50)),
            // padding: EdgeInsets.symmetric(
            //     vertical: 10, horizontal: 20),
            primary: Colors.black,
          ),
          onPressed:onPressed,
          child: Text(
           text,
            style: TextStyle(fontSize: fontSize),
          ),
        ),
      );
  }
}