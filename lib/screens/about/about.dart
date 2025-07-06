import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'About Us',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Times New Roman Regular',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Taking note of the importance of the East Asian region to both Indian and global policy formulations, the ‘Centre for East Asian Studies’ is dedicated to enhance the understanding of the region in the country and beyond. The scope of East Asia is the entire continental and maritime geographical region east of India. The Centre’s pursuit of excellence on the East Asian region is in consonance with India’s ‘Look/Act East Policy’.\n\n'
                'The forte of the Centre lies in looking at the East Asian region from an Indian perspective with a special emphasis on South India. This perspective is considered vital because of the fact that countries of the East Asian region are keen to connect with and know more about the southern states of India. Each of the Indian states is also keen to connect with the outside world, especially the eastern part of the globe, for various politico-economic and socio-cultural reasons.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  fontFamily: 'Times New Roman Regular',
                  color: Colors.white,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 18),
              Text(
                'The Centre, therefore, has a special focus on Federal units’ reach to the East Asian region and vice versa. In doing so, at the same time, the national perspective is not lost.\n\n'
                'We aim to create a vibrant academic community that bridges the gap between scholars, students, professionals, and institutions across borders.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  fontFamily: 'Times New Roman Regular',
                  color: Colors.white,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
