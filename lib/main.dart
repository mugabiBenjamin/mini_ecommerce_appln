import 'package:flutter/material.dart';
import 'package:mini_ecommerce_appln/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        '/intro_page': (context) => const IntroPage(),
      },
    );
  }
}
