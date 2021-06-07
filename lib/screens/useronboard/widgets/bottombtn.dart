import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String btnText;
  final Function press;
  final bool last;
  BottomButton({
    this.btnText,
    this.press,
    this.last,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              style: BorderStyle.solid,
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(50)),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        primary: Colors.black,
      ),
      child: Text(
        btnText,
        style: TextStyle(
          fontSize: 18,
          color: (last) ? Colors.yellow : Colors.white,
        ),
      ),
      onPressed: press,
    );
  }
}
