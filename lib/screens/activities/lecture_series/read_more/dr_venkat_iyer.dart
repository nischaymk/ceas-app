import 'package:flutter/material.dart';

class DrVenkatIyerPage extends StatelessWidget {
  const DrVenkatIyerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark background
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Dr. Dharish David Lecture',
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Dr. Venkat Iyer Lecture Highlights',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),

            // Image 1
            Image.asset('assets/images/lectures/venkat1.JPG'),
            const SizedBox(height: 16),

            // Image 2
            Image.asset('assets/images/lectures/venkat2.JPG'),
            const SizedBox(height: 16),

            // Image 3
            Image.asset('assets/images/lectures/venkat3.JPG'),
            const SizedBox(height: 16),

            // Image 4
            Image.asset('assets/images/lectures/venkat4.JPG'),
            const SizedBox(height: 16),

            const Text(
              '',
              style: TextStyle(fontSize: 16, fontFamily: 'Times New Roman Regular',color: Colors.white),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
