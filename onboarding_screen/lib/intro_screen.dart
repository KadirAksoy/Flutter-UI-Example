import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  final String title = "Kadir Aksoy of page";
  final String desc =
      "Write more description of page . Write more description of page. Write more description of page. Write more description of page. Write more description of page.";
  final String appbarTitle = "Onboarding Screen";
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbarTitle),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(Constants.allSize),
        child: IntroductionScreen(
          globalBackgroundColor: Constants.white,
          scrollPhysics: const BouncingScrollPhysics(),
          pages: [
            PageViewMethod(title, desc, "lib/images/screen1.png"),
            PageViewMethod(title, desc, "lib/images/screen2.png"),
            PageViewMethod(title, desc, "lib/images/screen3.png"),
          ],
          onDone: () {
            Navigator.pushNamed(context, "home");
          },
          onSkip: () {
            Navigator.pushNamed(context, "home");
          },
          showSkipButton: true,
          skip: const ButtonWidget(buttonText: "Skip"),
          next: const IconWidget(iconData: Icons.arrow_forward),
          done: const ButtonWidget(buttonText: "Done"),
          dotsDecorator: DotsDecorator(
            size: const Size.square(Constants.squareSize),
            activeSize:
                const Size(Constants.doubleSquareSize, Constants.squareSize),
            color: Constants.black26,
            activeColor: Constants.buttonColor,
            spacing: const EdgeInsets.symmetric(
                horizontal: Constants.horizontalSize),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Constants.circularSize),
            ),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  PageViewModel PageViewMethod(String title, String body, String imagePath) {
    return PageViewModel(
      titleWidget: Text(
        title,
        style: const TextStyle(
            fontSize: Constants.textFontSize, fontWeight: FontWeight.bold),
      ),
      body: body,
      image: Image.asset(
        imagePath,
        width: Constants.widthSize,
        height: Constants.heightSize,
      ),
    );
  }
}

class IconWidget extends StatelessWidget {
  final IconData iconData;

  const IconWidget({
    Key? key,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      color: Constants.buttonColor,
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final String buttonText;

  const ButtonWidget({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      buttonText,
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: Constants.buttonFontSize,
          color: Constants.buttonColor),
    );
  }
}

class Constants {
  static const double widthSize = 400;
  static const double heightSize = 400;

  static const double textFontSize = 30;
  static const double buttonFontSize = 18;

  static const Color buttonColor = Color(0xFF6C63FF);
  static const black26 = Colors.black26;
  static const white = Colors.white;

  static const double doubleSquareSize = 20.0;
  static const double squareSize = 20.0;

  static const double circularSize = 25.0;
  static const double horizontalSize = 3.0;
  static const double allSize = 8.0;
}
