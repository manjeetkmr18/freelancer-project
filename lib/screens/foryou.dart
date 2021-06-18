import 'package:flutter/material.dart';
import 'package:freelancer_project/screens/useronboard/widgets/bottombtn.dart';

class ForYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Align(
            child: Image.asset('assets/icons/biglogo.png'),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: Text(
              'Made just for you!',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5.copyWith(
                    color: Colors.black,
                    fontSize: 24.21,
                    fontWeight: FontWeight.w900,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.white),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'Awards Box asks for your permission to collect the information about your activity on other apps and websites.\n',
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.subtitle1.copyWith(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'Sharing your activity with our team and marketing partners will help us:\n',
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.subtitle1.copyWith(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            _bullet(),
                            SizedBox(width: 5),
                            Text(
                              'Show ads that are relevant to you.',
                              textAlign: TextAlign.start,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            _bullet(),
                            SizedBox(width: 5),
                            Text(
                              'Help keep Awards Box free of charge.',
                              textAlign: TextAlign.start,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            _bullet(),
                            SizedBox(width: 5),
                            Text(
                              'Identify areas for app improvement.',
                              textAlign: TextAlign.start,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'This setting can be changed at any time in your system settings.\n',
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.subtitle1.copyWith(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 8,
                      ),
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: BottomButton(
                        btnText: 'Continue',
                        press: () {},
                        last: false,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _bullet() {
    return Container(
      height: 9.0,
      width: 9.0,
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}
