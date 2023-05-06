import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WelcomePage4 extends StatelessWidget {
  const WelcomePage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: const Center(
        child: Text(
          "Page4",
          style: TextStyle(color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
