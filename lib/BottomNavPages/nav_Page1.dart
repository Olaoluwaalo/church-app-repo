// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:uacc_app/BottomNavPages/nav_page1B.dart';
import 'package:uacc_app/BottomNavPages/nav_page1C.dart';
import 'package:uacc_app/BottomNavPages/nav_page1D.dart';
import 'package:uacc_app/Home%20Page/home_page.dart';
import 'package:uacc_app/Nav%20Routes/routes.dart';

class NavPage1 extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var next;
  NavPage1({Key? key, required this.next}) : super(key: key);

  @override
  State<NavPage1> createState() => _NavPage1State();
}

class _NavPage1State extends State<NavPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const SizedBox(
              height: 18,
            ),
            const Text(
              'WELCOME TO THE UACC APP!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Explore ways you can learn more about \nGod and his kingdom!',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            const SizedBox(
              height: 25,
            ),
            NavPage1B(
                firstText: 'Devotional of the Day',
                secondText: 'JOY COMETH IN THE MORNING.',
                thirdText: 'Psalm 30:5',
                buttonShare: true),
            const SizedBox(
              height: 20,
            ),
            NavPage1C(
              tapped: () {
                setState(() {
                  Navigator.of(context)
                      .pushNamed(RouteManager.sundaySchoolPage);
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            NavPage1D(
              tapped: () {
                setState(() {
                  indexClicked = 1;
                });
              },
              one: 'HYMNS',
              two: 'Sing with grace in your hearts to the\nLord',
            ),
            const SizedBox(
              height: 20,
            ),
            NavPage1D(
              tapped: () {
                setState(() {
                  Navigator.of(context)
                      .pushNamed(RouteManager.ourTeachingsPage);
                });
              },
              one: 'OUR TEACHINGS',
              two: 'Sing with grace in your hearts to the\nLord',
            )
          ],
        ),
      ),
    );
  }
}
