// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';
import 'package:uacc_app/Material/material.dart';

class NavPage1D extends StatelessWidget {
  var one;
  var two;
  var tapped;

  NavPage1D(
      {Key? key, required this.one, required this.two, required this.tapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapped,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                one,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
              const SizedBox(
                height: 6.5,
              ),
              Text(
                two,
                style: const TextStyle(color: Defaults.itemColor, fontSize: 18),
              ),
            ],
          ),
        ),
        height: 110,
        width: double.infinity,
        decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/Rectangle-4.png'),
          ),
          color: const Color.fromARGB(255, 3, 2, 2),
          borderRadius: BorderRadius.circular(17),
        ),
      ),
    );
  }
}
