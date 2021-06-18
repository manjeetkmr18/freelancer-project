import 'package:flutter/material.dart';

class FavPeopleWidget extends StatefulWidget {
  FavPeopleWidget({Key key}) : super(key: key);

  @override
  _FavPeopleWidgetState createState() => _FavPeopleWidgetState();
}

class _FavPeopleWidgetState extends State<FavPeopleWidget> {
  bool isSeleted = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          (isSeleted) ? isSeleted = false : isSeleted = true;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset('assets/images/favpeople.png'),
                ),
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.center,
                  child: (isSeleted)
                      ? Icon(
                          Icons.favorite,
                          size: 40,
                          color: Colors.red,
                        )
                      : Icon(
                          Icons.favorite_border,
                          size: 40,
                          color: Colors.white,
                        ),
                ))
              ],
            ),
            Icon(Icons.star),
            Text(
              'Joseph Fiennes',
              textAlign: TextAlign.center,
            ),
            Text(
              'Commander Fred\nWaterford',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10.61),
            ),
          ],
        ),
      ),
    );
  }
}
