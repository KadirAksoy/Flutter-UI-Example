import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(ButtonNumber.spaceNUm),
        margin: EdgeInsets.symmetric(horizontal: ButtonNumber.horizontalNum),
        decoration: BoxDecoration(
          color: ButtonColor.black,
          borderRadius: BorderRadius.circular(ButtonNumber.borderNum),
        ),
        child: Center(
          child: Text(
            ButtonText.signInString,
            style: TextStyle(
              color: ButtonColor.white,
              fontWeight: FontWeight.bold,
              fontSize: ButtonNumber.fontSize,
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonNumber {
  static double spaceNUm = 25;
  static double horizontalNum = 25;
  static double borderNum = 8;
  static double fontSize = 16;
}

class ButtonColor {
  static Color white = Colors.white;
  static Color black = Colors.black;
}

class ButtonText {
  static String signInString = "Sign In";
}
