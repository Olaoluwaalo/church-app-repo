// ignore_for_file: prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';
import 'package:uacc_app/Material/material.dart';

// ignore: must_be_immutable
class NavPage1B extends StatelessWidget {
  var firstText;
  var secondText;
  var thirdText;
  bool buttonShare = false;
  NavPage1B({
    required this.firstText,
    required this.secondText,
    required this.thirdText,
    required this.buttonShare,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              firstText,
              style: const TextStyle(
                  color: Defaults.itemColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 6.5,
            ),
            Text(
              secondText,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            const SizedBox(
              height: 6.5,
            ),
            Text(
              thirdText,
              style: const TextStyle(color: Defaults.itemColor, fontSize: 18),
            ),
            const SizedBox(
              height: 6.5,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(130, 50),
                primary: Defaults.itemselectedColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Share',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  Icon(Icons.share_sharp)
                ],
              ),
            ),
          ],
        ),
      ),
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/Rectangle.png'),
        ),
        color: const Color.fromARGB(255, 3, 2, 2),
        borderRadius: BorderRadius.circular(17),
      ),
    );
  }
}
