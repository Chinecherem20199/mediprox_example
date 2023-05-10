import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mediprox_example/splash_screen/splash_screen.dart';
import 'package:mediprox_example/onboarding_screen.dart';

import 'package:mediprox_example/splash_screen/welcome_onboarding.dart';

var routes = <String, WidgetBuilder>{
   "/welcome" : (BuildContext context) => const WelcomeOnboardingScreen(),
  "/onboarding": (BuildContext context) => const OnBoardingScreen()
};

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: routes,
    );
  }
}
