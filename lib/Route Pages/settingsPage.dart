// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:uacc_app/Material/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {
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
            leading: const Icon(Icons.language),
            title: const Text('Language'),
          ),
          const ListTile(
            leading: Icon(Icons.text_format_sharp),
            title: Text('Text Size'),
          ),
          const ListTile(
            leading: Icon(Icons.tablet_android_sharp),
            title: Text('Theme'),
          )
        ],
      ),
    );
  }
}
