import 'package:flutter/material.dart';
import 'package:freelancer_project/screens/details/widgets/icon_button.dart';

class QuestionScreen extends StatelessWidget {
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

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          top: 50,
        ),
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
            Icons.share_outlined,
            color: Colors.black,
            size: 35,
          ),
          Icon(
            Icons.cancel,
            color: Colors.black,
            size: 35,
          ),
        ],
      ),
    );
  }

  _dash() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: const EdgeInsets.only(top: 0),
        height: 3,
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
      margin: const EdgeInsets.only(top: 50),
      child: CustomScrollView(
        slivers: [
          _item1(context),
          _spacer(context, size.height * 0.03),
          _rowTitle(context, Icons.star, "Alex won 15 Awards", "15"),
          _spacer(context, size.height * 0.02),
          _gridList(context, Icons.star),
          _spacer(context, size.height * 0.02),
          _textTitle(
            "How many Nominations did The SpongeBob Movie: Sponge on the Run (2020) get?",
          ),
          _spacer(context, size.height * 0.02),
          _rowTitle(context, Icons.star, "Alex won 15 Oscar", "15"),
          _spacer(context, size.height * 0.02),
          _gridList1(context, Icons.star),
          _spacer(context, size.height * 0.02),
          _button(context),
          _spacer(context, size.height * 0.02),
          _textTitle(
            "How many Nominations did The SpongeBob Movie: Sponge on the Run (2020) get?",
          ),
          _spacer(context, size.height * 0.02),
          _rowTitle(context, Icons.star, "Alex won 15 Emmy", "15"),
          _spacer(context, size.height * 0.02),
          _gridList1(context, Icons.star),
          _spacer(context, size.height * 0.02),
          _button(context),
          _spacer(context, size.height * 0.02),
          _textTitle(
            "How many Nominations did Alex get?",
          ),
          _spacer(context, size.height * 0.02),
          _rowTitle(context, Icons.flag, "Alex got 15 Nominations", "15"),
          _spacer(context, size.height * 0.02),
          _gridList(context, Icons.flag),
          _spacer(context, size.height * 0.02),
          _textTitle(
            "How many Nominations did Alex get at the Emmy Awards?",
          ),
          _spacer(context, size.height * 0.02),
          _rowTitle(context, Icons.star,
              "Alex got 15\nNominations at Emmy Awards", "15"),
          _spacer(context, size.height * 0.02),
          _gridList1(context, Icons.flag),
          _spacer(context, size.height * 0.02),
          _button(context),
          _spacer(context, size.height * 0.02),
        ],
      ),
    );
  }

  _button(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: ButtonIcon(
          height: size.height * 0.05,
          width: size.width * 0.4,
          icon: Icons.visibility,
          label: "Load More",
          fontSize: 11,
          onPressed: () {}),
    );
  }

  _spacer(BuildContext context, double height) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: height,
      ),
    );
  }

  _textTitle(String title) {
    return SliverToBoxAdapter(
      child: Text(
        title,
        style: TextStyle(
            color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold),
      ),
    );
  }

  _item1(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "How many Awards did The SpongeBob Movie: Sponge on the Run (2020) win?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  _rowTitle(
      BuildContext context, IconData icon, String title, String starCount) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.only(left: 9),
        height: size.height * 0.1,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon),
                SizedBox(width: 4),
                Text(starCount),
              ],
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  _gridList(BuildContext context, IconData icon) {
    final size = MediaQuery.of(context).size;
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          mainAxisExtent: size.height * 0.12),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Card(
            color: Colors.white,
            // (index+1).isEven ? Colors.white:Colors.black,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(icon),
                        SizedBox(width: 4),
                        Text("8"),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Academy Awards",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                )),
          );
        },
        childCount: 6,
      ),
    );
  }

  _gridList1(BuildContext context, IconData icon) {
    final size = MediaQuery.of(context).size;
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          mainAxisExtent: size.height * 0.3),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Card(
            color: Colors.white,
            // (index+1).isEven ? Colors.white:Colors.black,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(icon),
                      SizedBox(width: 4),
                      Text("8"),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "25th Oscar",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "Outstanding Comedy Serieså",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/en/1/17/Mulan_%282020_film%29_poster.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        childCount: 4,
      ),
    );
  }
}
