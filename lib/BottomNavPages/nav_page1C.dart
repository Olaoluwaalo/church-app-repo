// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:uacc_app/Material/material.dart';

class NavPage1C extends StatelessWidget {
  var tapped;
  NavPage1C({Key? key, required this.tapped}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapped,
      child: Container(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'SUNDAY SCHOOL \n DEVOTIONAL',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                  SizedBox(
                    height: 6.5,
                  ),
                  Text(
                    'Dig deep into God\'s word \nthrough the UACC Sunday \nSchool Department ',
                    style: TextStyle(color: Defaults.itemColor, fontSize: 18),
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset('assets/images/picture 2.png',
                  height: 145, width: 110, fit: BoxFit.fill),
            ),
          ],
        ),
        height: 165,
        width: double.infinity,
        decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/Rectangle.png'),
          ),
          color: const Color.fromARGB(255, 3, 2, 2),
          borderRadius: BorderRadius.circular(17),
        ),
      ),
    );
  }
}
