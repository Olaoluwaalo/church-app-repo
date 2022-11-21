import 'package:flutter/material.dart';

class OrinIyin extends StatefulWidget {
  const OrinIyin({Key? key}) : super(key: key);

  @override
  State<OrinIyin> createState() => _OrinIyinState();
}

class _OrinIyinState extends State<OrinIyin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orin Iyin Page'),
      ),
    );
  }
}
