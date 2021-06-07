import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottombtn.dart';

class UserOnboard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF7F7F7),
        body: Container(
          margin: EdgeInsets.only(
            top: 10,
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
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset('assets/icons/logo.png')),
                Text(
                  'Choose Favourite  Movies & TV-\nShows',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.black,
                        fontSize: 19.3,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: CupertinoSearchTextField(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    borderRadius: BorderRadius.circular(30),
                    placeholder: 'Search for Movie or TV-Show...',
                  ),
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          top: 8,
                        ),
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: BottomButton(
                          btnText: 'Load More',
                          press: () {},
                          last: false,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 8,
                        ),
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: BottomButton(
                          btnText: 'Not Today',
                          press: () {},
                          last: false,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 8,
                        ),
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: BottomButton(
                          btnText: 'Continue',
                          press: () {},
                          last: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
