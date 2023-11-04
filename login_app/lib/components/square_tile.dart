import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  const SquareTile({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(SquareTileNum.allNum),
      decoration: BoxDecoration(
        border: Border.all(color: SquareTileColor.white),
        borderRadius: BorderRadius.circular(SquareTileNum.radiusNum),
        color: SquareTileColor.grey200,
      ),
      child: Image.asset(
        imagePath,
        height: SquareTileNum.heightNum,
      ),
    );
  }
}

class SquareTileNum {
  static double allNum = 20;
  static double heightNum = 40;
  static double radiusNum = 16;
}

class SquareTileColor {
  static Color? grey200 = Colors.grey[200];
  static Color white = Colors.white;
}
