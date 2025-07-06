import 'package:flutter/material.dart';

class ChinaAboutPage extends StatelessWidget {
  const ChinaAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'About China Section Content Goes Here',
          style: TextStyle(
            fontFamily: 'Times New Roman Regular',
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}