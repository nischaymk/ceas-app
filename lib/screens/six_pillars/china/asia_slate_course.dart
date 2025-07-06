import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AsiaSlateCoursePage extends StatelessWidget {
  const AsiaSlateCoursePage({super.key});

  void _launchURL() async {
    final Uri url = Uri.parse('https://drive.google.com/file/d/1gaBm4-C3aosyH7su5xS_B9YlYyg7QqrT/view'); // <- Replace with your actual link
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Asia Slate Certificate Course',
          style: TextStyle(fontFamily: 'Montserrat'),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Asia Slate Certificate Course',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.teal,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              'ACF aims to build capacity for knowledge exchange between India and the countries of East and Southeast Asia. At a time when the influence of  Asian powers in regional and global affairs is growing, our efforts are focused on leveraging cross-country understanding to facilitate progress in developmental areas of priority to India and the Global South. ',
              style: TextStyle(fontSize: 16, fontFamily: 'Times New Roman Regular'),
              textAlign: TextAlign.justify,
            ),
            const Text(
              'Decoding Contemporary China.',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Times New Roman Regular',
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.justify,
            ),
            const Text(
              '''The 21st century is widely expected to be the 'Asian century'. As Asian hubs of development, innovation, employment, culture, and region-defining geopolitics emerge and grow, it is crucial that we turn our gaze from the West to the East – including players such as China.''',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Times New Roman Regular',
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: _launchURL,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: const Text(
                'Read More',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
