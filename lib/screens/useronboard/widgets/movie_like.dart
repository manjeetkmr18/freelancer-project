import 'package:flutter/material.dart';

class MoviesLikeWidget extends StatefulWidget {
  MoviesLikeWidget({Key key}) : super(key: key);

  @override
  _MoviesLikeWidgetState createState() => _MoviesLikeWidgetState();
}

class _MoviesLikeWidgetState extends State<MoviesLikeWidget> {
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
                Image.asset(
                  'assets/images/likemovies.png',
                  fit: BoxFit.cover,
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
            Text('Avengers: End \nGame(2020)')
          ],
        ),
      ),
    );
  }
}
