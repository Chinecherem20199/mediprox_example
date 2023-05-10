import 'package:flutter/material.dart';

final ButtonStyle buttonStyle1 = ElevatedButton.styleFrom(
  minimumSize: Size(327, 50),
  backgroundColor: Color(0xff0079FF),
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(25),
    ),
  ),
);

class CustomButton extends StatelessWidget {
  Color? buttonCollor;
  final String text;
  Color textColor;
  VoidCallback onTap;
  double borderRadios;
  double width;
  double height;
  Color? borderColor;
  CustomButton({
    super.key,
    this.buttonCollor,
    required this.borderRadios,
    this.borderColor,
    required this.text,
    required this.onTap,
    required this.textColor,
    required this.width,
    required this.height,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: buttonCollor,
          borderRadius: BorderRadius.circular(borderRadios, ),
          border: Border.all(
            width: 2.0,
            color: Colors.white,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}


// @override
// Widget build(BuildContext context) {
//   return OutlinedButton(
//     onPressed: () {},
//     style: ElevatedButton.styleFrom(
//       padding: const EdgeInsets.all(20),
//       minimumSize: const Size(327, 50),
//       // backgroundColor: const Color(0xff0079FF),
//       // elevation: 15,
//       shadowColor: const Color(0xff0079FF),
//       side: const BorderSide(
//         color: Colors.white,
//         width: 3,
//       ),
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(
//           Radius.circular(25),
//         ),
//       ),
//     ),
//     child: const Text(
//       "Next",
//       style: TextStyle(
//         color: Colors.white,
//         fontSize: 20,
//         fontWeight: FontWeight.w700,
//       ),
//     ),
//   );
// }
