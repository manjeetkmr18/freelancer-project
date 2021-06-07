import 'package:flutter/material.dart';

import 'screens/authentication/signin_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
