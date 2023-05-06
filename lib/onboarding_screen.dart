import 'package:flutter/material.dart';
import 'package:mediprox_example/welcome_page/home_page.dart';
import 'package:mediprox_example/welcome_page/wecome_page3.dart';
import 'package:mediprox_example/welcome_page/welcome_page1.dart';
import 'package:mediprox_example/welcome_page/welcome_page2.dart';
import 'package:mediprox_example/welcome_page/welcome_page4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) => {
              setState(
                () => {
                  // if(onLastPage == index-1);
                  onLastPage = (index == 3)
                },
              )
            },
            controller: _controller,
            children: const [
              WelcomePage1(),
              WelcomePage2(),
              WelcomePage3(),
              WelcomePage4(),
            ],
          ),
          // dot indicator here
          Container(
            alignment: Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(3);
                  },
                  child: const Text("skip"),
                ),
                SmoothPageIndicator(controller: _controller, count: 4),
                onLastPage
                    ? GestureDetector(
                         child: const Text("done"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HomePage();
                              },
                            ),
                          );
                        },
                      )
                    : GestureDetector(
                        child: const Text("next"),
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
