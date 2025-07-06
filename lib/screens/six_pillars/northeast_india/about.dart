import 'package:flutter/material.dart';

class NorthEastIndiaAboutPage extends StatelessWidget {
  const NorthEastIndiaAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
        return const Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Content Goes Here',
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