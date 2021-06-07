import 'package:flutter/material.dart';
import 'package:freelancer_project/screens/details/widgets/icon_button.dart';

class MovieDetails extends StatelessWidget {
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
        padding: const EdgeInsets.only(left: 10, right: 10),
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
      child: CustomScrollView(
        slivers: [
          _item1(context),
          _spacer(context, size.height * 0.02),
          _title(context, "Current Season", 22),
          _item2(context),
          _spacer(context, size.height * 0.02),
          _rowTitle(
              context: context,
              title: "Where to Watch",
              fontSize: 22,
              button: ButtonIcon(
                  height: size.height * 0.05,
                  width: size.width * 0.29,
                  icon: Icons.play_arrow,
                  label: "See All",
                  onPressed: () {})),
          _item3(context),
          _spacer(context, size.height * 0.05),
          _item4(context),
          _spacer(context, size.height * 0.02),
          _rowButtonsList(context),
          _spacer(context, size.height * 0.02),
          _rowTitle(
              context: context,
              title:
                  "What awards have the\nThe SpongeBob Movie:\nSponge on the Run\n(2020)won?",
              fontSize: 21,
              button: ButtonIcon(
                  height: size.height * 0.05,
                  width: size.width * 0.29,
                  icon: Icons.visibility,
                  label: "See All",
                  onPressed: () {})),
          _spacer(context, size.height * 0.02),
          expandableGridList(context),
          _spacer(context, size.height * 0.03),
          _rowTitle(
              context: context,
              title:
                  "What Nominations have\nThe SpongeBob Movie:\nSponge on the Run\n(2020)won?",
              fontSize: 21,
              button: ButtonIcon(
                  height: size.height * 0.05,
                  width: size.width * 0.29,
                  icon: Icons.visibility,
                  label: "See All",
                  onPressed: () {})),
          _spacer(context, size.height * 0.02),
          expandableGridList(context),
          _spacer(context, size.height * 0.03),
          _rowTitle(
              context: context,
              title: "Cast & Crew",
              fontSize: 21,
              button: ButtonIcon(
                  height: size.height * 0.05,
                  width: size.width * 0.29,
                  icon: Icons.visibility,
                  label: "See All",
                  onPressed: () {})),
          _spacer(context, size.height * 0.03),
          castCrewInGridList(context),
          _spacer(context, size.height * 0.03),
          _rowTitle(
              context: context,
              title: "Related Award-Winning\nTV-Shows",
              fontSize: 21,
              button: ButtonIcon(
                  height: size.height * 0.05,
                  width: size.width * 0.29,
                  icon: Icons.visibility,
                  label: "See All",
                  onPressed: () {})),
          tvShowsGridList(context)
        ],
      ),
    );
  }

  _title(BuildContext context, String title, double fontSize) {
    return SliverToBoxAdapter(
      child: Text(
        title,
        style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
      ),
    );
  }

  _rowTitle(
      {BuildContext context, String title, double fontSize, Widget button}) {
    return SliverToBoxAdapter(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
        ),
        button
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
        // margin: const EdgeInsets.only(top: 70),
        height: size.height * 0.42,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: size.height * 0.25,
                  width: size.width * 0.35,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/mandalorian.jpg"),
                          fit: BoxFit.cover),
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 2,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "The Mandalorian (2019)",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ButtonIcon(
                        height: size.height * 0.05,
                        width: size.width * 0.55,
                        icon: Icons.play_arrow_rounded,
                        label: "Add to favourite",
                        fontSize: 11,
                        onPressed: () {}),
                    SizedBox(
                      height: 2,
                    ),
                    ButtonIcon(
                        height: size.height * 0.05,
                        width: size.width * 0.55,
                        icon: Icons.play_arrow_rounded,
                        fontSize: 11,
                        label: "Add to watchlist",
                        onPressed: () {}),
                    SizedBox(
                      height: 2,
                    ),
                    ButtonIcon(
                        height: size.height * 0.05,
                        width: size.width * 0.55,
                        icon: Icons.play_arrow_rounded,
                        label: "Add to favourite",
                        fontSize: 11,
                        onPressed: () {}),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "It is a long estabilished fact that a reader will\nbe distracted by the readable content of\npage when looking at its layout..",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            ButtonIcon(
                height: size.height * 0.05,
                width: size.width * 0.4,
                icon: Icons.visibility,
                label: "Read More",
                fontSize: 11,
                onPressed: () {}),
          ],
        ),
      ),
    );
  }

  _item2(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Container(
          padding: const EdgeInsets.all(2),
          height: size.height * 0.12,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: size.width * 0.17,
                height: size.height * 0.12,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/mandalorian.jpg"),
                        fit: BoxFit.cover),
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Season 2",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "2020 | 8 Episodes",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          )),
    );
  }

  _item3(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(2),
        height: size.height * 0.18,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(2),
                width: size.width * 0.3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/appleTv.png"),
                        fit: BoxFit.contain),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(2),
                width: size.width * 0.3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/netflix.png")),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(2),
                width: size.width * 0.3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/googlePlay.png")),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _item4(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(2),
        height: size.height * 0.14,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Network",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/icons/disneyPlus.png")),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              children: [
                Text(
                  "Country",
                  style: TextStyle(fontSize: 18),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    width: size.width * 0.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/icons/usaFlag.png")),
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              children: [
                Text(
                  "Rating",
                  style: TextStyle(fontSize: 18),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(2),
                    width: size.width * 0.3,
                    child: Text(
                      "8.5/10",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  expandableGridList(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0,
          mainAxisSpacing: 0.0,
          crossAxisSpacing: 0.0,
          mainAxisExtent: size.height * 0.3),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
                padding: const EdgeInsets.all(2),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star),
                        SizedBox(width: 4),
                        Text("8"),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      "First Academy Awards",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: size.height * 0.04),
                    Text(
                      "Best Actor",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Best Director",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: size.height * 0.03),
                    userList(context),
                  ],
                )),
          );
        },
        childCount: 4,
      ),
    );
  }

  userList(BuildContext context) {
    double startPoint = 20;
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.10,
      alignment: Alignment.center,
      child: Stack(
        children: [
          Positioned(
            left: startPoint,
            child: UserAvatar(
                imageUrl: "https://wallpaperaccess.com/full/3957694.jpg",
                avatarRadius: size.height * 0.05),
          ),
          Positioned(
            left: startPoint * 2,
            child: UserAvatar(
                imageUrl:
                    "https://m.media-amazon.com/images/M/MV5BZDA1ODgyODEtOWI3Yy00N2UzLTk5ZGMtZGI1MzU5YzFkZDQ1XkEyXkFqcGdeQXVyMTc4MzI2NQ@@._V1_UY1200_CR285,0,630,1200_AL_.jpg",
                avatarRadius: size.height * 0.05),
          ),
          Positioned(
            left: startPoint * 3,
            child: UserAvatar(
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhS1n9AgNPFrsPjj0fHqwPdIJPJLl9hXUq5Q&usqp=CAU",
                avatarRadius: size.height * 0.05),
          ),
          Positioned(
            left: startPoint * 4,
            child: UserAvatar(
                imageUrl:
                    "https://img.mensxp.com/media/content/2020/Aug/Michele-Morrone-From-365-Days-Floored-Us-With-His-Fashion-Game-1200x900_5f2a761253b66_1200x900.jpeg",
                avatarRadius: size.height * 0.05),
          ),
          Positioned(
            left: startPoint * 5,
            child: _remaining(remainingUser: "+3", radius: size.height * 0.05),
          ),
        ],
      ),
    );
  }

  _remaining({String remainingUser, double radius}) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Container(
        alignment: Alignment.center,
        height: radius,
        width: radius,
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: Text(remainingUser),
      ),
    );
  }

  castCrewInGridList(BuildContext context) {
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
            color: Colors.white,
            elevation: 0,
            child: Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: size.height * 0.07,
                      backgroundImage: AssetImage(
                        "assets/images/joseph.jpeg",
                      ),
                    ),
                    Icon(Icons.star),
                    Text(
                      "Joseph Fiennes",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Joseph Fiennes",
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      "Joseph",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                )),
          );
        },
        childCount: 6,
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
          mainAxisExtent: size.height * 0.3),
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
                          color: Colors.black),
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

  _rowButtonsList(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Container(
        height: size.height * 0.06,
        child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(5),
                child: SizedBox(
                  height: 20,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(50)),
                      // padding: EdgeInsets.symmetric(
                      //     vertical: 10, horizontal: 20),
                      primary: Colors.black,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Button ${index + 1}",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class _Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[300],
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
