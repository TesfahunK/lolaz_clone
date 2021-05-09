import 'package:flutter/material.dart';
import 'package:lolaz_clone/ui/screens/chat-rooms-screen.dart';
import 'package:lolaz_clone/ui/screens/home-screen.dart';
import 'package:lolaz_clone/ui/screens/profile-screen.dart';
import 'package:lolaz_clone/ui/screens/search-screen.dart';
import 'package:lolaz_clone/utils/ui/common.dart';

class TheBottomNav extends StatefulWidget {
  @override
  _TheBottomNavState createState() => _TheBottomNavState();
}

class _TheBottomNavState extends State<TheBottomNav> {
  int _current = 0;

  List<Widget> _bodies = [
    TheHomeScreen(),
    SearchScreen(),
    ChatRooms(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodies[_current],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: UiCommons.accentColor,
          iconSize: 25,
          unselectedItemColor: UiCommons.grayColor,
          showSelectedLabels: false,
          currentIndex: _current,
          onTap: (x) {
            setState(() {
              _current = x;
            });
          },
          items: [
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.favorite),
                icon: Icon(Icons.favorite_border),
                label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "")
          ]),
    );
  }
}
