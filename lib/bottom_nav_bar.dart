import 'package:damishop/UI/home.dart';
import 'package:damishop/defaults.dart';
import 'package:damishop/UI/login_ui.dart';
import 'package:flutter/material.dart';

import 'UI/profile/profile.dart';

class MenuBar extends StatefulWidget {
  const MenuBar({super.key});

  @override
  State<MenuBar> createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  var indexClicked = 0;

  final List<Widget> pages = const [
    HomeScreen(),
    HomeWidget(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 80.0,
        currentIndex: indexClicked,
        // unselectedItemColor: Defaults.secondaryColor,
        // selectedItemColor: Defaults.primaryColor,
        // backgroundColor: Colors.red,
        onTap: (value) {
          setState(() {
            indexClicked = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Defaults.bottomNavBarIcons[0],
                // color: Defaults.primaryColor,
              ),
              label: Defaults.bottomNavBar[0]),
          BottomNavigationBarItem(
              icon: Icon(
                Defaults.bottomNavBarIcons[1],
              ),
              label: Defaults.bottomNavBar[1]),
          BottomNavigationBarItem(
              icon: Icon(
                Defaults.bottomNavBarIcons[2],
              ),
              label: Defaults.bottomNavBar[2]),
        ],
      ),
      body: pages[indexClicked],
    );
  }
}
