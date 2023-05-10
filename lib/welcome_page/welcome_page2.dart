import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class WelcomePage2 extends StatelessWidget {
  const WelcomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              // child: Image.asset("images/book_dr.png"),
              child: const Image(
                image: AssetImage("images/book_dr.png"),
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              color: const Color(0xffffffFF),
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              child: Column(
                children: [
                  const Text(
                    "Book an Appointment",
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
                    "Schedule an appointment with the doctor of your choice either online or over the phone",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    borderRadios: 25,
                    text: "Next",
                    onTap: () {},
                    textColor: Color(0xffffffff),
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
