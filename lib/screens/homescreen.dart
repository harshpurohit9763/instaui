import 'package:flutter/material.dart';
import 'package:ui/screens/home.dart';
import 'package:ui/screens/profile.dart';
import 'package:ui/screens/reels.dart';
import 'package:ui/screens/search.dart';

import 'likes.dart';

class homeScreen extends StatefulWidget {
  homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selectedIndex = 0;
  void navigationBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  ///different pages on selected index
  final List<Widget> children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: navigationBottomBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
        ],
      ),
    );
  }
}
