import 'package:flutter/material.dart';

class ConferenceThreePage extends StatelessWidget {
  const ConferenceThreePage({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'All India Conference on East Asian Studies',
          style: TextStyle(fontFamily: 'Montserrat',color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'All India Conference on East Asian Studies Highlights',
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
            Image.asset('assets/images/conferences/allindiaconf1.jpeg'),
            const SizedBox(height: 16),

            // Image 2
            Image.asset('assets/images/conferences/allindiaconf2.jpeg'),
            const SizedBox(height: 16),
            const Text(
              '',
              style: TextStyle(fontSize: 16, fontFamily: 'Times New Roman Regular'),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}

