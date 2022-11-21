import 'package:flutter/material.dart';
import 'package:uacc_app/Nav%20Routes/routes.dart';

class NavPage4 extends StatefulWidget {
  const NavPage4({Key? key}) : super(key: key);

  @override
  State<NavPage4> createState() => _NavPage4State();
}

class _NavPage4State extends State<NavPage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            const Center(
              child: Text(
                'More',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed(RouteManager.aboutAppPage);
                });
              },
              child: Container(
                child: const Center(
                  child: Text('About UACC',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                height: 155,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/Rectangle-2.png'),
                  ),
                  color: const Color.fromARGB(255, 3, 2, 2),
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            GestureDetector(
              onTap: (() {
                Navigator.of(context).pushNamed(RouteManager.ourTeachingsPage);
              }),
              child: Container(
                child: const Center(
                  child: Text('Our Teachings',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                height: 110,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/Rectangle-8.png'),
                  ),
                  color: const Color.fromARGB(255, 3, 2, 2),
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(RouteManager.orinIyin);
              },
              leading: const Icon(Icons.phone),
              title: const Text('Contact Us'),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(RouteManager.settingsPage);
              },
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
            ),
            const ListTile(
              leading: Icon(Icons.share),
              title: Text('Share App'),
            ),
            const ListTile(
              leading: Icon(Icons.update),
              title: Text('Update App'),
            ),
            const ListTile(
              leading: Icon(Icons.rate_review),
              title: Text('Rate App'),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(RouteManager.aboutClickPage);
              },
              leading: const Icon(Icons.adobe_outlined),
              title: const Text('About the App'),
            ),
          ],
        ),
      ),
    );
  }
}
