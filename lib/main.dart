import 'package:flutter/material.dart';
import 'package:uacc_app/Material/material.dart';
import 'package:uacc_app/Nav%20Routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RouteManager.splashPage,
      onGenerateRoute: RouteManager.generateRoute,
      theme: ThemeData(
        primaryColor: Defaults.itemselectedColor,
        appBarTheme:
            const AppBarTheme(backgroundColor: Defaults.itemselectedColor),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
