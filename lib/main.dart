import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CEAS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'EB Garamond',
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
