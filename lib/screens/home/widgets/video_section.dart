import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/blurimg.png',
          colorBlendMode: BlendMode.color,
          fit: BoxFit.contain,
          width: double.infinity,
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Image.asset('assets/icons/play-outline.png'),
          ),
        ),
      ],
    );
  }
}
