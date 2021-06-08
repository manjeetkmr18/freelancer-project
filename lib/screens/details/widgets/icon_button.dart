import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  final double height;
  final double width;
  final IconData icon;
  final String label;
  final double fontSize;
  final void Function() onPressed;
  const ButtonIcon(
      {Key key,
      @required this.height,
      this.width,
      @required this.icon,
      @required this.label,
      @required this.onPressed,
      this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(50)),
            // padding: EdgeInsets.symmetric(
            //     vertical: 10, horizontal: 20),
            primary: Colors.black,
          ),
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          label: Text(
            label,
            style: TextStyle(fontSize: fontSize),
          ),
        ),
      ),
    );
  }
}
