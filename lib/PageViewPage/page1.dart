import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({
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
                image: AssetImage('assets/images/picture 2.png'),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Get Closer to God through his \n Word',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'We strongly believe seeking intimacy daily with \n God has the power to transform our lives. ',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              )
            ]),
      ),
    );
  }
}
