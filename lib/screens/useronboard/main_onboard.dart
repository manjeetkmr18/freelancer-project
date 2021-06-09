import 'package:flutter/material.dart';

import 'onboard_screens/user_onbard.dart';
import 'onboard_screens/user_onboard2.dart';

class MainOnboard extends StatefulWidget {
  @override
  _MainOnboardState createState() => _MainOnboardState();
}

class _MainOnboardState extends State<MainOnboard> {
  List slides = [
    UserOnboard(),
    UserOnboard2(),
    UserOnboard2(),
    UserOnboard2(),
    UserOnboard2(),
  ];
  double currentPage = 0.0;
  final _pageViewController = new PageController();
  List<Widget> indicator() => List<Widget>.generate(
        slides.length,
        (index) => AnimatedContainer(
          margin: EdgeInsets.symmetric(horizontal: 3.0),
          height: currentPage.round() == index ? 10.0 : 18,
          width: currentPage.round() == index ? 25.0 : 18,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(10.0)),
          duration: Duration(microseconds: 400),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF7F7F7),
        body: Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset('assets/icons/logo.png'),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.06,
                  child: Container(
                    alignment: Alignment.center,
                    child: PageView.builder(
                      controller: _pageViewController,
                      itemCount: slides.length,
                      itemBuilder: (BuildContext context, int index) {
                        _pageViewController.addListener(() {
                          setState(() {
                            currentPage = _pageViewController.page;
                          });
                        });
                        return slides[index];
                      },
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: 70.0),
                      padding: EdgeInsets.symmetric(vertical: 40.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: indicator(),
                      ),
                    )
                    //  ),
                    )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
