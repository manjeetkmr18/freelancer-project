import 'package:flutter/material.dart';
import 'package:freelancer_project/screens/account/account_screen.dart';
import 'package:freelancer_project/screens/film_festival/film_festival.dart';
import 'package:freelancer_project/screens/home/home_screen.dart';
import 'package:freelancer_project/screens/tvshows/winning_tvshows_screen.dart';

class BottomNavHome extends StatefulWidget {
  @override
  _BottomNavHomeState createState() => _BottomNavHomeState();
}

class _BottomNavHomeState extends State<BottomNavHome> {
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: tabIndex == 0
            ? HomeScreen()
            : tabIndex == 1
                ? AccountScreen()
                : tabIndex == 2
                    ? HomeScreen()
                    : tabIndex == 3
                        ? FilmFestival()
                        : WinningTvShows(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.yellow,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.visibility,
              ),
              activeIcon: Icon(
                Icons.visibility,
                color: Colors.yellow,
              ),
              label: "Discover"),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_border),
              activeIcon: Icon(
                Icons.star_border,
                color: Colors.yellow,
              ),
              label: "Awards"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            activeIcon: Icon(
              Icons.search,
              color: Colors.yellow,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/blog.png'),
              activeIcon: Icon(
                Icons.menu_book_outlined,
                color: Colors.yellow,
              ),
              label: "Blog"),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/account.png'),
              activeIcon: Image.asset('assets/icons/account.png'),
              label: "Account")
        ],
        currentIndex: tabIndex,
        onTap: (int index) {
          setState(() {
            tabIndex = index;
          });
        },
      ),
    );
  }
}
