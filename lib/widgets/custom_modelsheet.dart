import 'package:flutter/material.dart';
import 'package:freelancer_project/screens/useronboard/main_onboard.dart';

class CustomModelSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset('assets/images/profile.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Username',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Text(
                        'Your Profile URL',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(50)),
                          padding:
                              EdgeInsets.symmetric(vertical: 1, horizontal: 20),
                          primary: Colors.white,
                        ),
                        onPressed: () {},
                        child: Text(
                          'https://awardsbox.com/mickymouse',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 25,
                  bottom: 25,
                ),
                child: Text(
                  'Amazing that you have completed your Awards Box Profile!',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 35,
                ),
                child: Text(
                  'Now, you can share your profile.',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 20,
                ),
                width: MediaQuery.of(context).size.width * 0.58,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          style: BorderStyle.solid,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(50)),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    primary: Colors.black,
                  ),
                  child: Text(
                    'Share It',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainOnboard(),
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 20,
                ),
                width: MediaQuery.of(context).size.width * 0.8,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          style: BorderStyle.solid,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(50)),
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                    primary: Colors.black,
                  ),
                  child: Text(
                    'Discover Awards Box',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.yellow,
                    ),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
