import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: TextFieldNumber.horizontalNUm),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: TextFieldColor.white54),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: TextFieldColor.greyShade400),
            ),
            fillColor: TextFieldColor.greyShade200,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: TextFieldColor.greyShade500)),
      ),
    );
  }
}

class TextFieldNumber {
  static double horizontalNUm = 25;
}

class TextFieldColor {
  static Color white54 = Colors.white54;
  static Color greyShade400 = Colors.grey.shade400;
  static Color greyShade200 = Colors.grey.shade200;
  static Color? greyShade500 = Colors.grey[500];
}
