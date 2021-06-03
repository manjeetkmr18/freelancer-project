import 'package:flutter/material.dart';
import 'package:freelancer_project/screens/film_festival/film_festival.dart';
import 'package:freelancer_project/screens/home/home_screen.dart';
import 'package:freelancer_project/screens/tvshows/winning_tvshows_screen.dart';

class BottomNavHome extends StatefulWidget {
  @override
  _BottomNavHomeState createState() => _BottomNavHomeState();
}

class _BottomNavHomeState extends State<BottomNavHome> {
  final _selectedItemColor = Colors.yellow;
  final _unselectedItemColor = Colors.black;
  final _selectedBgColor = Colors.black;
  final _unselectedBgColor = Colors.white;
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    HomeScreen(),
    WinningTvShows(),
    FilmFestival(),
    HomeScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Color _getBgColor(int index) =>
      _selectedIndex == index ? _selectedBgColor : _unselectedBgColor;

  Color _getItemColor(int index) =>
      _selectedIndex == index ? _selectedItemColor : _unselectedItemColor;

  Widget _buildIcon(IconData iconData, String text, int index) => Container(
        width: double.infinity,
        height: kBottomNavigationBarHeight,
        child: Material(
          color: _getBgColor(index),
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(iconData),
                Text(text,
                    style:
                        TextStyle(fontSize: 12, color: _getItemColor(index))),
              ],
            ),
            onTap: () => _onItemTapped(index),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.remove_red_eye_outlined, 'Discover', 0),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.star_border, 'Awards', 1),
            label: 'Awards',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.search, 'Search', 2),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.menu_book_rounded, 'Blog', 3),
            label: 'Blog',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.account_circle_sharp, 'Account', 4),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: _selectedItemColor,
        unselectedItemColor: _unselectedItemColor,
      ),
    );
  }
}
