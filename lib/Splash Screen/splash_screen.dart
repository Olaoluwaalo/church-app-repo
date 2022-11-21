import 'dart:async';

import 'package:flutter/material.dart';
import 'package:uacc_app/PageViewPage/page_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      setState(() {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const PageViewPage(),
          ),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Image(
            height: 100,
            width: 100,
            image: AssetImage('assets/images/uacc logo.jpg'),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'United Apostolic Church Of Christ \n Worldwide',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ],
      )),
    );
  }
}
