import 'package:flutter/material.dart';
import 'package:mediprox_example/widgets/custom_button.dart';

class WelcomePage1 extends StatelessWidget {
  const WelcomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // color: Colors.blue,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              // decoration: const BoxDecoration(
              //   image: DecorationImage(
              //       image: AssetImage(
              //           "images/find_dr.png"),
              //       fit: BoxFit.fill),
              // ),
              child: const Image(
                image: AssetImage("images/find_dr.png"),
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
                    "Find Your doctor and make an appointment",
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
                    "Take control of your health with the help of our knowledgeable health personal, Book an appointment now, The best way to find a good doctor is to ask one",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    borderRadios: 25,
                    text: "Next",
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



// class CustomButton extends StatelessWidget {
  
//   @override
//   Widget build(BuildContext context) {
//     return  ElevatedButton(
//       style: buttonStyle1,
//       onPressed: onTap,
//       child: Text(buttonText),
//     );
//   }
// }
