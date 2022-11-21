// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:uacc_app/Nav%20Routes/routes.dart';

class SundaySchoolPage extends StatefulWidget {
  const SundaySchoolPage({Key? key}) : super(key: key);

  @override
  State<SundaySchoolPage> createState() => _SundaySchoolPageState();
}

class _SundaySchoolPageState extends State<SundaySchoolPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: TabBarView(children: [
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context)
                    .pushNamed(RouteManager.sundaySchoolSelPage);
              });
            },
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return const ListTile(
                  title: Text('Lesson 1'),
                  subtitle: Text('Nitori Ijoba Orun'),
                );
              },
            ),
          ),
          ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return const ListTile(
                title: Text('Lesson 1'),
                subtitle: Text('Nitori Ijoba Orun'),
              );
            },
          )
        ]),
        appBar: AppBar(
          bottom: const TabBar(indicatorColor: Colors.white, tabs: [
            Tab(
              child: Text('Yoruba'),
            ),
            Tab(
              child: Text('English'),
            ),
          ]),
          centerTitle: true,
          title: const Text('Sunday School'),
        ),
      ),
    );
  }
}
