import 'package:flutter/material.dart';

import 'widgets/show_widget.dart';

class WinningTvShows extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _Background(),
        _Body(),
      ],
    ));
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          top: 40,
        ),
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60),
            topRight: Radius.circular(60),
          ),
        ),
        child: Stack(
          children: [
            _ItemsList(),
            _dash(),
            _topButtons(),
          ],
        ));
  }

  _topButtons() {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        margin: const EdgeInsets.only(top: 20, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '1950 Black & White Award-\nWinning TV-Shows',
              style: TextStyle(
                fontSize: 19.13,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.share_outlined,
                  color: Colors.black,
                  size: 40,
                ),
                Icon(
                  Icons.cancel,
                  color: Colors.black,
                  size: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _dash() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        height: 4,
        width: 30,
        decoration: BoxDecoration(
            color: Colors.grey[400], borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

class _ItemsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 70),
      child: CustomScrollView(
        slivers: [
          expandableGridList(context),
        ],
      ),
    );
  }

  expandableGridList(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 330.0,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10,
        mainAxisExtent: size.height * 0.47,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return TvShowWidget();
        },
        childCount: 8,
      ),
    );
  }
}

class _Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
    );
  }
}

class UserAvatar extends StatelessWidget {
  final String imageUrl;
  final double avatarRadius;

  const UserAvatar(
      {Key key, @required this.imageUrl, @required this.avatarRadius})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: avatarRadius,
      width: avatarRadius,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage(imageUrl), fit: BoxFit.cover)),
    );
  }
}
