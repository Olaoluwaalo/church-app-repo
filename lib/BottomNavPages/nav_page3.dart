import 'package:flutter/material.dart';
import 'package:uacc_app/Material/material.dart';
import 'package:uacc_app/Nav%20Routes/routes.dart';

class NavPage3 extends StatefulWidget {
  const NavPage3({Key? key}) : super(key: key);

  @override
  State<NavPage3> createState() => _NavPage3State();
}

class _NavPage3State extends State<NavPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Devotionals'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context)
                      .pushNamed(RouteManager.sundaySchoolPage);
                });
              },
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'SUNDAY SCHOOL',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 23),
                          ),
                          SizedBox(
                            height: 6.5,
                          ),
                          Text(
                            'Dig deep into God\'s word \nthrough the UACC Sunday \nSchool Department ',
                            style: TextStyle(
                                color: Defaults.itemColor, fontSize: 18),
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
                    // ignore: unnecessary_const
                    image: const AssetImage('assets/images/Rectangle.png'),
                  ),
                  color: const Color.fromARGB(255, 3, 2, 2),
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'DAILY DEVOTIONAL',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                    SizedBox(
                      height: 6.5,
                    ),
                    Text(
                      'Find out what God has in stock for you \ntoday!',
                      style: TextStyle(color: Defaults.itemColor, fontSize: 18),
                    ),
                  ],
                ),
              ),
              height: 110,
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
          ],
        ),
      ),
    );
  }
}
