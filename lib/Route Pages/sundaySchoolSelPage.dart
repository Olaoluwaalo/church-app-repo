// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:uacc_app/Material/material.dart';

class SundaySchoolSelPage extends StatefulWidget {
  const SundaySchoolSelPage({Key? key}) : super(key: key);

  @override
  State<SundaySchoolSelPage> createState() => _SundaySchoolSelPageState();
}

class _SundaySchoolSelPageState extends State<SundaySchoolSelPage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                scaffoldKey.currentState?.showBottomSheet((context) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text('Change Lnaguage'),
                        ListTile(
                          leading: const Text('Youruba'),
                          trailing: IconButton(
                            onPressed: () {},
                            icon:
                                const Icon(Icons.radio_button_checked_outlined),
                          ),
                        ),
                        ListTile(
                          leading: const Text('English'),
                          trailing: IconButton(
                            onPressed: () {},
                            icon:
                                const Icon(Icons.radio_button_checked_outlined),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: const Text('Apply'),
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(200, 40),
                                primary: Defaults.itemselectedColor)),
                      ],
                    ),
                    width: double.infinity,
                    height: 180,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                  );
                });
              });
            },
            icon: const Icon(Icons.manage_search_sharp),
          ),
        ],
        title: const Text('For the sake of the Kingdom'),
      ),
    );
  }
}
