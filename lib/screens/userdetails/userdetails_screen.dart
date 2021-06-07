import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserDetailsScreen extends StatelessWidget {
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
          top: 200,
        ),
        padding: const EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          color: Color(0xFFF7F7F7),
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
          mainAxisAlignment: MainAxisAlignment.end,
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
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 70),
      padding: EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      child: CustomScrollView(
        slivers: [
          _item1(context),
          _spacer(context, size.height * 0.02),
          _rowTitle(
            context: context,
            title: "Watchlists",
            btntext: 'The user hasn’t added \nWatchlist',
            pressed: () {},
          ),
          _secondgrid(context, Colors.black),
          _spacer(context, size.height * 0.02),
          _rowTitle(
            context: context,
            title: "Favourite Movies",
            btntext: 'The user hasn’t added \nfavourite Movies',
            pressed: () {},
          ),
          tvShowsGridList(context),
          _rowTitle(
            context: context,
            title: "Favourite TV-Shows",
            btntext: 'The user hasn’t added \nfavourite TV-Shows',
            pressed: () {},
          ),
          _spacer(context, size.height * 0.01),
          tvShowsGridList(context),
          _rowTitle(
            context: context,
            title: "Favourite Awards",
            btntext: 'The user hasn’t added \nfavourite Awards',
            pressed: () {},
          ),
          _secondgrid(context, Color(0xFFD7D7D7)),
          _spacer(context, size.height * 0.01),
          _rowTitle(
            context: context,
            title: "Favourite Actors",
            btntext: 'The user hasn’t added \nfavourite Actors',
            pressed: () {},
          ),
          circleGrid(context),
          _spacer(context, size.height * 0.01),
          _rowTitle(
            context: context,
            title: "Favourite Directors",
            btntext: 'The user hasn’t added \nfavourite Directors',
            pressed: () {},
          ),
          circleGrid(context),
          _spacer(context, size.height * 0.01),
          _rowTitle(
            context: context,
            title: "Favourite Editors",
            btntext: 'The user hasn’t added \nfavourite Editors',
            pressed: () {},
          ),
          circleGrid(context)
        ],
      ),
    );
  }

  _rowTitle({
    BuildContext context,
    String title,
    String btntext,
    Function pressed,
  }) {
    return SliverToBoxAdapter(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 19.13, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(50)),
            padding: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
            primary: Colors.black,
          ),
          onPressed: pressed,
          child: Text(
            btntext,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 9),
          ),
        ),
      ],
    ));
  }

  _spacer(BuildContext context, double height) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: height,
      ),
    );
  }

  _item1(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Container(
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset('assets/images/profile.png'),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Username',
                      style: Theme.of(context).textTheme.headline5.copyWith(
                            fontSize: 19.13,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FaIcon(FontAwesomeIcons.facebook),
                          SizedBox(width: 8),
                          FaIcon(FontAwesomeIcons.instagram),
                          SizedBox(width: 8),
                          FaIcon(FontAwesomeIcons.linkedinIn),
                          SizedBox(width: 8),
                          FaIcon(FontAwesomeIcons.reddit),
                          SizedBox(width: 8),
                          FaIcon(FontAwesomeIcons.twitter),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  _secondgrid(BuildContext context, Color boxColor) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
                color: boxColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  width: size.width * 0.41,
                  height: size.height * 0.15,
                )),
            Card(
              color: boxColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                width: size.width * 0.41,
                height: size.height * 0.15,
              ),
            ),
          ],
        ),
      ),
    );
  }

  circleGrid(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: size.width * 0.4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color(0xFFD7D7D7),
            ),
          );
        },
        childCount: 3,
      ),
    );
  }

  tvShowsGridList(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: size.width * 0.4,
          mainAxisSpacing: 0.0,
          crossAxisSpacing: 0.0,
          mainAxisExtent: size.height * 0.27),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Card(
            color: Colors.transparent,
            elevation: 0,
            child: Container(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: size.height * 0.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFD7D7D7)),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Avengers End Game(2020)",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                )),
          );
        },
        childCount: 3,
      ),
    );
  }
}

class _Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/images/userdetailsbg.png',
        fit: BoxFit.cover,
        width: double.infinity,
      ),
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
