// ignore_for_file: file_names

import 'package:flutter/material.dart';

class OurTeachingsPage extends StatefulWidget {
  const OurTeachingsPage({Key? key}) : super(key: key);

  @override
  State<OurTeachingsPage> createState() => _OurTeachingsPageState();
}

class _OurTeachingsPageState extends State<OurTeachingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Teachings'),
      ),
    );
  }
}
