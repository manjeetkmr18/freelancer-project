import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freelancer_project/screens/useronboard/widgets/movie_like.dart';

class FavTvShow extends StatelessWidget {
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
    return Container(
      margin: const EdgeInsets.only(top: 70),
      padding: EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      child: CustomScrollView(
        slivers: [
          _centerWidet(context),
        ],
      ),
    );
  }

  _centerWidet(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Add Favourite  TV-Shows',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headline5.copyWith(
                  color: Colors.black,
                  fontSize: 19.3,
                  fontWeight: FontWeight.w600,
                ),
          ),
          Container(
            alignment: Alignment.center,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for Movie or TV-Show...',
                prefixIcon: Icon(Icons.search, color: Colors.black),
                filled: true,
                fillColor: Colors.white70,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(color: Colors.white, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(color: Colors.white, width: 2),
                ),
                suffixIcon: Image.asset('assets/icons/Filter.png'),
              ),
            ),
          ),
          Container(
            child: GridView.builder(
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 1,
                  mainAxisExtent: size.height * 0.22,
                ),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return MoviesLikeWidget();
                }),
          ),
        ],
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
