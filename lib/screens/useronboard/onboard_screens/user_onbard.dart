import 'package:flutter/material.dart';
import 'package:freelancer_project/screens/useronboard/widgets/bottombtn.dart';

class UserOnboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          child: Image.asset('assets/icons/logo.png'),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          child: Text(
            'Hi Username,\nWelcome to Awards Box!',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline5.copyWith(
                  color: Colors.black,
                  fontSize: 24.21,
                  fontWeight: FontWeight.w900,
                ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8),
          child: Text(
            'Fantastic that you have signed up for\nthe Awards Box.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1.copyWith(
                  color: Colors.black,
                  fontSize: 16,
                ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8),
          child: Text(
            'We are going to walkthrough the basic\nsettings and you are ready to go!',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1.copyWith(
                  color: Colors.black,
                  fontSize: 16,
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Select your Avatar',
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(fontWeight: FontWeight.w600, fontSize: 19.3),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            bottom: 8.0,
          ),
          child: Container(
            padding: EdgeInsets.only(top: 10),
            child: GridView.builder(
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 1,
                ),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset('assets/images/profile.png'),
                  );
                }),
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
                width: MediaQuery.of(context).size.width * 0.7,
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
                  press: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => UserOnboard2(),
                    //   ),
                    // );
                  },
                  last: true,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
