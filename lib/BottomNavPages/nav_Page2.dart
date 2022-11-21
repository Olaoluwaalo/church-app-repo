// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:uacc_app/Material/material.dart';
import 'package:uacc_app/Nav%20Routes/routes.dart';

class NavPage2 extends StatefulWidget {
  const NavPage2({Key? key}) : super(key: key);

  @override
  State<NavPage2> createState() => _NavPage2State();
}

class _NavPage2State extends State<NavPage2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: TabBarView(children: [
          ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return const ListTile(
                title: Text('Hymn 1'),
                subtitle: Text('Dide yin Oluwa'),
              );
            },
          ),
          ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return const ListTile(
                title: Text('Hymn 1'),
                subtitle: Text('Dide yin Oluwa'),
              );
            },
          )
        ]),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          automaticallyImplyLeading: false,
          centerTitle: true,
          bottom:
              const TabBar(indicatorColor: Defaults.itemselectedColor, tabs: [
            Tab(
              child: Text(
                'Yoruba',
                style: TextStyle(color: Defaults.itemselectedColor),
              ),
            ),
            Tab(
              child: Text('English',
                  style: TextStyle(color: Defaults.itemselectedColor)),
            ),
          ]),
          title: Row(
            children: const [
              SizedBox(
                height: 45,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Defaults.itemselectedColor)),
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Defaults.itemselectedColor)),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushNamed(RouteManager.hymnIndexPage);
                });
              },
              icon: const Icon(
                Icons.manage_search_sharp,
                color: Defaults.itemselectedColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
