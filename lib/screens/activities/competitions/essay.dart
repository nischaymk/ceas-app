import 'package:flutter/material.dart';

class EssayPage extends StatelessWidget {
  const EssayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Essay Competition',
          style: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
        ),
      ),
      body: const Center(
        child: Text(
          'Essay competition details go here',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Times New Roman Regular',
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
