import 'package:flutter/material.dart';
import 'package:uacc_app/Home%20Page/home_page.dart';
import 'package:uacc_app/Route%20Pages/aboutAppPage.dart';
import 'package:uacc_app/Route%20Pages/aboutClickPage.dart';
import 'package:uacc_app/Route%20Pages/dailyDevPage.dart';
import 'package:uacc_app/Route%20Pages/hymnIndexPage.dart';
import 'package:uacc_app/Route%20Pages/hymnSearchPage.dart';
import 'package:uacc_app/Route%20Pages/orin_iyin.dart';
import 'package:uacc_app/Route%20Pages/ourTeachingsPage.dart';
import 'package:uacc_app/Route%20Pages/settingsPage.dart';
import 'package:uacc_app/Route%20Pages/sundaySchoolDevPage.dart';
import 'package:uacc_app/Route%20Pages/sundaySchoolPage.dart';
import 'package:uacc_app/Route%20Pages/sundaySchoolSelPage.dart';
import 'package:uacc_app/Splash%20Screen/splash_screen.dart';

class RouteManager {
  static const String sundaySchoolPage = '/';
  static const String ourTeachingsPage = '/teachingsPage';
  static const String hymnSearchPage = '/hymnSearchPage';
  static const String hymnIndexPage = '/hymnIndexPage';
  static const String hymnIndexSelected = '/hymnSelected';
  static const String sundaySchoolDevPage = '/sundaySchoolDev';
  static const String sundaySchoolSelPage = '/sundaySchoolSel';
  static const String dailyDevPage = '/dailyDev';
  static const String dailyDevSelPage = '/dailyDevSel';
  static const String aboutClickPage = '/aboutPage';
  static const String settingsPage = '/settingsPage';
  static const String aboutAppPage = '/aboutApp';
  static const String splashPage = '/splashPage';
  static const String orinIyin = '/orinIyin';
  static const String homePage = '/homePage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case sundaySchoolPage:
        return MaterialPageRoute(
          builder: (context) => const SundaySchoolPage(),
        );
      case ourTeachingsPage:
        return MaterialPageRoute(
          builder: (context) => const OurTeachingsPage(),
        );
      case hymnSearchPage:
        return MaterialPageRoute(
          builder: (context) => const HymnSearchPage(),
        );
      case hymnIndexPage:
        return MaterialPageRoute(
          builder: (context) => const HymnIndexPage(),
        );
      case hymnIndexSelected:
        return MaterialPageRoute(
          builder: (context) => const HymnIndexPage(),
        );
      case sundaySchoolDevPage:
        return MaterialPageRoute(
          builder: (context) => const SundaySchoolDevPage(),
        );
      case sundaySchoolSelPage:
        return MaterialPageRoute(
          builder: (context) => const SundaySchoolSelPage(),
        );
      case dailyDevPage:
        return MaterialPageRoute(
          builder: (context) => const DailyDevPage(),
        );
      case dailyDevSelPage:
        return MaterialPageRoute(
          builder: (context) => const DailyDevPage(),
        );
      case aboutClickPage:
        return MaterialPageRoute(
          builder: (context) => const AboutClickPage(),
        );
      case settingsPage:
        return MaterialPageRoute(
          builder: (context) => const SettingsPage(),
        );
      case aboutAppPage:
        return MaterialPageRoute(
          builder: (context) => const AboutAppPage(),
        );
      case splashPage:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case orinIyin:
        return MaterialPageRoute(
          builder: (context) => const OrinIyin(),
        );
      case homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );

      default:
        throw const FormatException();
    }
  }
}
