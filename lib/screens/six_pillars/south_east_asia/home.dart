import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchURL(String url) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}

class SouthEastAsiaHomePage extends StatelessWidget {
  const SouthEastAsiaHomePage({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'South East Asia',
              style: TextStyle(
                fontFamily: 'Times New Roman Regular',
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Southeast Asia is home to historically rich, politically varied, culturally vibrant and religiously diverse nations of Myanmar, Brunei, Cambodia, Indonesia, Malaysia, Singapore, Thailand, Vietnam, Timor-Leste, Laos, and the Philippines. Surrounded by waters essentially, it stands at the crossroads of the wider Asia-Pacific, with strategic and powerful neighbors such as China, Australia, Japan, and India. Grouped as ASEAN (Association of South East Asian Nations), the region has become a focal point for the emerging regional security architecture in the Asia-Pacific. Recording an impressive economic growth in the last decade, and hosting one third of global maritime traffic, Southeast Asia has developed into a vital junction for world trade. Hence, global powers like the United State and China are ramping up their engagement with the countries in the region, at individual, bilateral and multilateral levels. The Southeast Asian countries have been welcoming and enthusiastic of the diverse engagements with foreign powers, as it serves to constrain single power influence over the region. At the same time, providing multiple sources for development of their economic and defense potential. However, the countries in the region are not without their own challenges in the form of infrastructure gaps, income inequality, and extreme weather calamities (as a result of climate change).',
              style: TextStyle(
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
                fontSize: 18,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 32),
            const Center(
              child: Text(
                'ACTIVITIES',
                style: TextStyle(
                  fontFamily: 'Times New Roman Regular',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Activity Cards Column
            ActivityCard(
              imageUrl: 'assets/images/southeast/act1.png',
              title: 'Cultural Fests ',
              description: '',
              onTap: () {
                _launchURL(
              '',
                );
              },
            ),
            ActivityCard(
              imageUrl: 'assets/images/southeast/act2.png',
              title: 'Guest Lectures',
              description: '',
              onTap: () {
                _launchURL(
              '',
                );
              },
            ),
            ActivityCard(
              imageUrl: 'assets/images/southeast/act3.png',
              title: 'Exchange Programme',
              description: '',
              onTap: () {
                _launchURL(
                  '',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final VoidCallback onTap;

  const ActivityCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Times New Roman Regular',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          if (description.isNotEmpty)
            Text(
              description,
              style: const TextStyle(
                fontFamily: 'Times New Roman Regular',
                fontSize: 16,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 232, 225, 3),
            ),
            child: const Text(
              'Read More',
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
        ],
      ),
    );
  }
}
