import 'package:flutter/material.dart';
import 'package:freelancer_project/models/account_model.dart';
import 'package:freelancer_project/screens/details/widgets/icon_button.dart';
import 'package:lottie/lottie.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: _ItemsList(),
    );
  }
}

class _ItemsList extends StatelessWidget {
  List<AccountsModel> listData = [
    AccountsModel(
      title: "Academy",
      bgColor: Colors.black,
      fontColor: Colors.white,
    ),
    AccountsModel(
      title: "BAFTA",
      bgColor: Colors.white,
      fontColor: Colors.black,
    ),
    AccountsModel(
      title: "Cannaes Film Festival\n",
      bgColor: Colors.white,
      fontColor: Colors.black,
    ),
    AccountsModel(
      title: "Emmy",
      bgColor: Colors.black,
      fontColor: Colors.white,
    ),
    AccountsModel(
      title: "Academy",
      bgColor: Colors.black,
      fontColor: Colors.white,
    ),
    AccountsModel(
      title: "BAFTA",
      bgColor: Colors.white,
      fontColor: Colors.black,
    ),
    AccountsModel(
      title: "Cannaes Film Festival\n",
      bgColor: Colors.white,
      fontColor: Colors.black,
    ),
    AccountsModel(
      title: "Emmy",
      bgColor: Colors.black,
      fontColor: Colors.white,
    ),
    AccountsModel(
      title: "Academy",
      bgColor: Colors.black,
      fontColor: Colors.white,
    ),
    AccountsModel(
      title: "BAFTA",
      bgColor: Colors.white,
      fontColor: Colors.black,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: CustomScrollView(slivers: [
        _item1(context),
        _spacer(context, size.height * 0.02),
        _rowButton(context),
        _spacer(context, size.height * 0.02),
        _expandableGridList(context),
        _spacer(context, size.height * 0.02),
        _button(context),
        _spacer(context, size.height * 0.02),
      ]),
    );
  }

  _button(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Container(
        alignment: Alignment.center,
        width: size.width,
        child: ButtonIcon(
            height: size.height * 0.05,
            width: size.width * 0.45,
            icon: Icons.visibility,
            fontSize: 13,
            label: "Load More",
            onPressed: () {}),
      ),
    );
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
      padding: const EdgeInsets.only(left: 10, right: 20),
      alignment: Alignment.center,
      height: size.height * 0.18,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Discover awards from\nall over the World",
                style: TextStyle(
                    fontSize: 15,
                    height: 1.3,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 4),
              Text(
                "Oscar,Emmy, Canners, BAFTA..",
                style: TextStyle(fontSize: 11, color: Colors.white),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              // color: Colors.red,
            ),
            height: 55,
            width: 55,
            child: Lottie.asset(
              'assets/animations/awardLogo.json',
              repeat: true,
              reverse: true,
              animate: true,
            ),
          ),
        ],
      ),
    ));
  }

  _rowButton(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonIcon(
              height: size.height * 0.05,
              width: size.width * 0.45,
              icon: Icons.visibility,
              label: "Movies",
              fontSize: 13,
              onPressed: () {}),
          ButtonIcon(
              height: size.height * 0.05,
              width: size.width * 0.45,
              icon: Icons.visibility,
              label: "TV-Shows",
              fontSize: 13,
              onPressed: () {}),
        ],
      ),
    );
  }

  _expandableGridList(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          mainAxisExtent: size.height * 0.15),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Card(
            color: listData[index].bgColor,
            // (index+1).isEven ? Colors.white:Colors.black,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "${listData[index].title} Awards",
                textAlign: TextAlign.center,
                style: TextStyle(color: listData[index].fontColor),
              ),
            ),
          );
        },
        childCount: listData.length,
      ),
    );
  }
}
