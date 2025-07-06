import 'package:flutter/material.dart';

class DrdharishdavidPage extends StatelessWidget {
  const DrdharishdavidPage({super.key});

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
              'Dr. Dharish David Lecture Highlights',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),

            // Image 1
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/lectures/david1.JPG',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),

            // Image 2
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/lectures/david2.JPG',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 24),

            // Placeholder text (update when ready)
            const Text(
              'This session by Dr. Dharish David explored key dimensions in international affairs, policy, and education. It provided deep insight into the evolving geopolitical dynamics of East Asia and the Indo-Pacific.',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white70,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
