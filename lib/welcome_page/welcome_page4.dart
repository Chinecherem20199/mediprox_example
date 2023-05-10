import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';

class WelcomePage4 extends StatelessWidget {
  const WelcomePage4({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
         color: Colors.blue,
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              child: const Image(
                image: AssetImage("images/buy_drugs.png"),
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              // child: Image.asset("images/find_dr.png"),
            ),
            Container(
              color: const Color(0xffffffff),
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 40,
              ),
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              child: Column(
                children: [
                  const Text(
                    "Buy Your drugs here and get deliver at your door step",
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff0079FF),
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xff0079FF),
                        fontWeight: FontWeight.w400),
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                    "Get your drugs after checkup or  after consultation with your Dr, get your  drugs at your door step.",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    borderRadios: 25,
                    text: "Get Started",
                    onTap: () {},
                    textColor: Colors.white,
                    width: 327,
                    height: 50,
                    // borderColor: Colors.white,
                    buttonCollor: const Color(0xff0079FF),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
