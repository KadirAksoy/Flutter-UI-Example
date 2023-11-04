import 'package:flutter/material.dart';
import 'package:get_started_screen/view/get_started_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Get Started View',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const GetStartedView(),
    );
  }
}
