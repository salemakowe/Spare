import "package:flutter/material.dart";
import 'package:spare/screens/history.dart';
import 'package:spare/screens/home.dart';
import 'package:spare/screens/more.dart';
import 'package:spare/screens/notifications.dart';

import '../constants/color.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  static const List _pages = <Widget>[
    HomePage(),
    HistoryPage(),
    NotificationsPage(),
    MorePage(),
  ];

  int _selectedIndex = 0;
  // for the nav bar selected index
  void _onItemtapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedIconTheme: const IconThemeData(
        color: Kolors.mainColor,
        size: 45,
      ),
      selectedItemColor: Kolors.mainColor,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      elevation: 0,
      currentIndex: _selectedIndex,
      onTap: _onItemtapped,
      items: const <BottomNavigationBarItem>[
        //Home  BottomNavBar
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),

        //History BottomNavBar

        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: "History",
        ),

        //Notifications BottomNavBar

        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "Notification",
        ),

        //More BottomNavBar

        BottomNavigationBarItem(
          icon: Icon(Icons.apps),
          label: "More",
        ),
      ],
    );
  }
}
