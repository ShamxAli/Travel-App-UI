import 'package:flutter/material.dart';
import 'package:flutter_ui_design/ui/nav_screens/articles_screen.dart';
import 'package:flutter_ui_design/ui/nav_screens/feed_screen.dart';
import 'package:flutter_ui_design/ui/nav_screens/notifications_screen.dart';
import 'package:flutter_ui_design/ui/nav_screens/profile_screen.dart';
import 'package:flutter_ui_design/utils/data_lists.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _bottomNavIndex = 0;

  List<Widget> navList = [
    ArticlesScreen(),
    FeedScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navList[_bottomNavIndex],

      /* ================================= Bottom navigation bar =================================*/
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 10.0,
        currentIndex: _bottomNavIndex,
        items: bottomNavItems(),
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
      ),
    );
  }
}
