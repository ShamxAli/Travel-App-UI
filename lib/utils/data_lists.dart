import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_design/models/author.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<BottomNavigationBarItem> bottomNavItems() {
  return [
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.fileAlt),
      label: 'Articles',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.dashboard_rounded),
      label: 'Feed',
    ),
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.solidBell),
      label: 'Notifications',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_circle_rounded),
      label: 'Profile',
    ),
  ];
}

List<Author> authorList = [
    Author(name: "Harry" , image: 'images/t_five.jpg' , coverImage: 'images/three.jpg'),
    Author(name: "George" , image: 'images/t_two.jpg' , coverImage: 'images/one.jpg'),
    Author(name: "Jack" , image: 'images/t_three.jpg' , coverImage: 'images/two.jpg'),
    Author(name: "Leo" , image: 'images/t_four.jpg' , coverImage: 'images/three.jpg'),
    Author(name: "Edward" , image: 'images/t_five.jpg' , coverImage: 'images/one.jpg'),
    Author(name: "Jack" , image: 'images/t_three.jpg' , coverImage: 'images/two.jpg'),
    Author(name: "Leo" , image: 'images/t_four.jpg' , coverImage: 'images/three.jpg'),
    Author(name: "Edward" , image: 'images/t_five.jpg' , coverImage: 'images/one.jpg')
  ];
