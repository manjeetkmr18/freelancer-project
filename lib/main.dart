import 'package:flutter/material.dart';
import 'package:freelancer_project/screens/authentication/signin_screen.dart';

import 'screens/foryou.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Freelancer Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
        fontFamily: 'Inter',
      ),
      home: SignInSceen(),
    );
  }
}
