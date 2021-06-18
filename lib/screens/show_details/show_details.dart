import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';

class ShowDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _Background(),
          _Body(),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  Future<void> share() async {
    await FlutterShare.share(
        title: 'Title',
        text: 'Title',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'Example Chooser Title');
  }

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
            _topButtons(context),
          ],
        ));
  }

  _topButtons(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        margin: const EdgeInsets.only(top: 20, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '1950 Black & Whiye Award-\nWinning TV-Shows',
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.headline5.copyWith(
                    color: Colors.black,
                    fontSize: 19.3,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: share,
                  icon: Icon(
                    Icons.share_outlined,
                    color: Colors.black,
                    size: 40,
                  ),
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
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: CustomScrollView(
        slivers: [
          _centerWidet(context),
        ],
      ),
    );
  }

  _centerWidet(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Jun 27, 2019 · 2 min read'),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Image.asset(
              'assets/images/details.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Text(
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
            style: Theme.of(context).textTheme.headline5.copyWith(
                  color: Colors.black,
                  fontSize: 16,
                ),
            textAlign: TextAlign.justify,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Image.asset(
              'assets/images/details2.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
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
