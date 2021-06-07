import 'package:flutter/material.dart';

class TvShowWidget extends StatefulWidget {
  @override
  _TvShowWidgetState createState() => _TvShowWidgetState();
}

class _TvShowWidgetState extends State<TvShowWidget> {
  bool isFavSelected = false;
  bool isWatchlisted = false;
  bool isSeenItSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Image.asset(
                  'assets/images/video.png',
                  fit: BoxFit.contain,
                  // width: double.infinity,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    return showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: Colors.white,
                        context: context,
                        builder: (context) {
                          return _bottomSheet(context);
                        });
                  },
                  icon: Icon(
                    Icons.pending,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Schindler’s List (1993)',
                    style: TextStyle(
                      fontSize: 11.94,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'The true story of how businessman Oskar Schindler saved over a thousand Jewish lives from the Nazis while they worked as slaves in his factory during World War II.',
                    style: TextStyle(
                      fontSize: 10.61,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    bottom: 8.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(25)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.visibility,
                                      color: Colors.white, size: 9),
                                  Text(
                                    'Won 15 Awards',
                                    style: TextStyle(
                                      fontSize: 7,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.visibility,
                                        color: Colors.white, size: 9),
                                    Text(
                                      'Won 15 Awards',
                                      style: TextStyle(
                                          fontSize: 7, color: Colors.white),
                                    )
                                  ],
                                ),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  'Where to Watch',
                  style: TextStyle(fontSize: 11.94),
                ),
                Container(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (BuildContext ctx, int index) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _bottomSheet(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
        left: 20,
        right: 20,
        bottom: 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.cancel,
                  color: Colors.black,
                  size: 40,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Avengers: End Game(2020)',
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          _iconBtn(
            context: context,
            text: (isFavSelected)
                ? Text(
                    'Remove from Fav.',
                    style: TextStyle(color: Colors.yellow),
                  )
                : Text(
                    'Add to Favourites',
                    style: TextStyle(color: Colors.white),
                  ),
            icon: (isFavSelected)
                ? Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                : Icon(
                    Icons.favorite_outline,
                    color: Colors.white,
                  ),
            press: () {
              setState(() {
                (isFavSelected) ? isFavSelected = false : isFavSelected = true;
                print(isFavSelected);
              });
            },
          ),
          _iconBtn(
            context: context,
            text: (isWatchlisted)
                ? Text(
                    'Remove from Watchlist',
                    style: TextStyle(color: Colors.yellow),
                  )
                : Text(
                    'Add to Watchlist',
                    style: TextStyle(color: Colors.white),
                  ),
            icon: (isWatchlisted)
                ? Icon(
                    Icons.play_circle_outlined,
                    color: Colors.yellow,
                  )
                : Icon(
                    Icons.play_circle_outlined,
                    color: Colors.white,
                  ),
            press: () {
              setState(() {
                (isWatchlisted) ? isWatchlisted = false : isWatchlisted = true;
                print(isWatchlisted);
              });
            },
          ),
          _iconBtn(
            context: context,
            text: (isSeenItSelected)
                ? Text(
                    'Remove from Seen It',
                    style: TextStyle(color: Colors.yellow),
                  )
                : Text(
                    'Add to Seen It',
                    style: TextStyle(color: Colors.white),
                  ),
            icon: (isSeenItSelected)
                ? Icon(
                    Icons.play_circle_outlined,
                    color: Colors.yellow,
                  )
                : Icon(
                    Icons.play_circle_outlined,
                    color: Colors.white,
                  ),
            size: MediaQuery.of(context).size.width * 0.8,
            press: () {
              setState(() {
                (isSeenItSelected)
                    ? isSeenItSelected = false
                    : isSeenItSelected = true;
                print(isSeenItSelected);
              });
            },
          ),
        ],
      ),
    );
  }

  _iconBtn(
      {BuildContext context,
      Widget text,
      Icon icon,
      Function press,
      double size}) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: press,
        child: Container(
            padding: EdgeInsets.all(6),
            width: size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: EdgeInsets.all(size.width * 0.02),
              child: Row(
                children: [
                  SizedBox(width: size.width * 0.2),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: (icon == null)
                        ? Icon(
                            Icons.visibility,
                            color: Colors.white,
                          )
                        : icon,
                  ),
                  text,
                ],
              ),
            )),
      ),
    );
  }
}
