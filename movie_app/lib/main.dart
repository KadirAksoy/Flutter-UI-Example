import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_app/pages/category_page_view.dart';
import 'package:movie_app/pages/home_page_view.dart';
import 'package:movie_app/pages/movie_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // to hide status bar and below buttons
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF0111D)),
      routes: {
        "/": (context) => const HomePage(),
        "categoryPage": (context) => const CategoryPage(),
        "moviePage": (context) => const MoviePage(),
      },
    );
  }
}
