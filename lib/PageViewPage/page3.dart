import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              SizedBox(
                height: 30,
              ),
              Image(
                height: 50,
                width: 50,
                image: AssetImage('assets/images/uacc logo.jpg'),
              ),
              SizedBox(
                height: 20,
              ),
              Image(
                fit: BoxFit.cover,
                width: double.infinity,
                height: 320,
                image: AssetImage('assets/images/picture 4.png'),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'All on your phone',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'With just a tap, open the storehouse of Heaven \n and fill your life with God\'s treasures. ',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              )
            ]),
      ),
    );
  }
}
