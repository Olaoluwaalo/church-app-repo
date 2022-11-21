// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AboutClickPage extends StatefulWidget {
  const AboutClickPage({Key? key}) : super(key: key);

  @override
  State<AboutClickPage> createState() => _AboutClickPageState();
}

class _AboutClickPageState extends State<AboutClickPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About App'),
      ),
    );
  }
}
