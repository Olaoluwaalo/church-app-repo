import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uacc_app/Home%20Page/home_page.dart';
import 'package:uacc_app/Material/material.dart';
import 'package:uacc_app/PageViewPage/page1.dart';
import 'package:uacc_app/PageViewPage/page2.dart';
import 'package:uacc_app/PageViewPage/page3.dart';

class PageViewPage extends StatefulWidget {
  const PageViewPage({Key? key}) : super(key: key);

  @override
  State<PageViewPage> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  PageController pageController = PageController(initialPage: 0);

  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          onPageChanged: (index) {
            onLastPage = (index == 1);
          },
          controller: pageController,
          children: const [
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
        Container(
          alignment: const Alignment(0, 0.75),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: const WormEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Defaults.itemselectedColor,
                    dotHeight: 10,
                    dotWidth: 10,
                    radius: 20,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                onLastPage
                    ? Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(200, 50),
                            elevation: 20,
                            primary: Defaults.itemselectedColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ),
                              );
                            });
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 22, vertical: 0.9),
                            child: Text(
                              'Get Started',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(130, 50),
                            primary: Defaults.itemselectedColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              pageController.nextPage(
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.easeIn);
                            });
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 22, vertical: 0.9),
                            child: Text(
                              'Next',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
              ]),
        ),
      ]),
    );
  }
}
