import 'package:flutter/material.dart';
import 'package:freelancer_project/screens/authentication/signin_screen.dart';
import 'package:google_fonts/google_fonts.dart';

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
        fontFamily: GoogleFonts.inter().toString(),
      ),
      home: SignInSceen(),
    );
  }
}
