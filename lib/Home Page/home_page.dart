import 'package:flutter/material.dart';
import 'package:uacc_app/BottomNavPages/nav_Page1.dart';
import 'package:uacc_app/BottomNavPages/nav_Page2.dart';
import 'package:uacc_app/BottomNavPages/nav_page3.dart';
import 'package:uacc_app/BottomNavPages/nav_page4.dart';
import 'package:uacc_app/Material/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

var indexClicked = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final pages = [
      NavPage1(
        next: () {
          setState(() {
            indexClicked = 1;
          });
        },
      ),
      const NavPage2(),
      const NavPage3(),
      const NavPage4()
    ];
    return Scaffold(
      body: pages[indexClicked],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Defaults.itemselectedColor,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Defaults.itemColor,
          currentIndex: indexClicked,
          onTap: (index) {
            setState(() {
              indexClicked = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Defaults.itemIcon[0]),
                label: Defaults.itemIconText[0]),
            BottomNavigationBarItem(
                icon: Icon(Defaults.itemIcon[1]),
                label: Defaults.itemIconText[1]),
            BottomNavigationBarItem(
                icon: Icon(Defaults.itemIcon[2]),
                label: Defaults.itemIconText[2]),
            BottomNavigationBarItem(
                icon: Icon(Defaults.itemIcon[3]),
                label: Defaults.itemIconText[3]),
          ]),
    );
  }
}
