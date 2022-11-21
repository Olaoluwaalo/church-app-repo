// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HymnIndexPage extends StatefulWidget {
  const HymnIndexPage({Key? key}) : super(key: key);

  @override
  State<HymnIndexPage> createState() => _HymnIndexPageState();
}

class _HymnIndexPageState extends State<HymnIndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order of Hymns/Eto Awon Orin'),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2, crossAxisCount: 2),
          itemBuilder: (context, index) {
            return const Text('Hymn 1');
          }),
    );
  }
}
