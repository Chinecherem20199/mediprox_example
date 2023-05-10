import 'dart:async';

import 'package:flutter/material.dart';

import '../onboarding_screen.dart';

class WelcomeOnboardingScreen extends StatefulWidget {
  const WelcomeOnboardingScreen({super.key});

  @override
  State<WelcomeOnboardingScreen> createState() => _WelcomeOnboardingScreenState();
}

class _WelcomeOnboardingScreenState extends State<WelcomeOnboardingScreen> {

@override
void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 10), () {
      Navigator.pushNamed(
        context, "/onboarding",
        
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
             height: MediaQuery.of(context).size.height * 0.7,
            width: double.infinity,
            // height: 500,
            // color: Colors.white,
            child: Stack(
              children: [
                Positioned(
                  left: 70,
                  top: 111,
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("images/dr1.png"),
                      ),
                      // border: Border.all(color: Colors.grey, width: 2)
                    ),
                  ),
                ),
                Positioned(
                  left: 221,
                  top: 90,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("images/dr2.png"),
                      ),
                      // border: Border.all(color: Colors.grey, width: 2)
                    ),
                  ),
                ),
                Positioned(
                  left: -6,
                  top: 210,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("images/dr3.png"),
                      ),
                      // border: Border.all(color: Colors.grey, width: 2)
                    ),
                  ),
                ),
                Positioned(
                  left: 78,
                  top: 235,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("images/dr4.png"),
                      ),
                      // border: Border.all(color: Colors.grey, width: 2)
                    ),
                  ),
                ),
                Positioned(
                  left: 246,
                  top: 235,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("images/dr5.png"),
                      ),
                      // border: Border.all(color: Colors.grey, width: 2)
                    ),
                  ),
                ),
                Positioned(
                  right: -4,
                  top: 318,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("images/dr6.png"),
                      ),
                      // border: Border.all(color: Colors.grey, width: 2)
                    ),
                  ),
                ),
                Positioned(
                  left: -6,
                  top: 363,
                  child: Container(
                    width: 65,
                    height: 65,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("images/dr7.png"),
                      ),
                      // border: Border.all(color: Colors.grey, width: 2)
                    ),
                  ),
                ),
                Positioned(
                  left: 91,
                  top: 421,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("images/dr8.png"),
                      ),
                      // border: Border.all(color: Colors.grey, width: 2)
                    ),
                  ),
                ),
                Positioned(
                  right: 76,
                  top: 401,
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("images/dr9.png"),
                      ),
                      // border: Border.all(color: Colors.grey, width: 2)
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
             height: MediaQuery.of(context).size.height * 0.3,
            alignment: Alignment.center,
            child: Column(
              children: const [
                Text(
                  textAlign: TextAlign.center,
                  "Welcome to MediProx! 👋",
                  style: TextStyle(
                    // fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 48.0,
                    color: Color(0xff0079FF),
                  ),
                  overflow: TextOverflow.clip,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "The best online doctor appointment & consultation app of the century for your health and medical needs!",
                  style: TextStyle(
                    // fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                    color: Color(0xff3b3232),
                  ),
                  overflow: TextOverflow.clip,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
