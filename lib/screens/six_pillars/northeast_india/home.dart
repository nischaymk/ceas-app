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

class NorthEastIndiaHomePage extends StatelessWidget {
  const NorthEastIndiaHomePage({super.key});

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
              'North East India and East india',
              style: TextStyle(
                fontFamily: 'Times New Roman Regular',
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 251, 251, 251),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Considering the growing strategic, economic and cultural significance of North East India in the evolving dynamics of India’s East Asia policy, the Centre for East Asian Studies is proud to announce the establishment of its 6th pillar: ‘North East India and East Asia’. This new thematic focus recognizes North East India not merely as a frontier region but as a vibrant corridor that connects the Indian subcontinent with the broader East and Southeast Asian countries. The region is now increasingly seen as central to India’s Act East Policy — a flagship initiative aimed at strengthening ties with ASEAN nations, Japan, South Korea, and other East Asian partners.Through this initiative, the Centre seeks to promote interdisciplinary research, policy dialogues, academic collaborations, and cultural exchanges that bridge North East India with East Asia. This involves examining the region’s potential as a logistical, commercial, and cultural bridge, while also critically engaging with issues such as connectivity, security, trade, environmental sustainability, and identity politics. The integration of North East India into East Asian studies reflects a conscious effort to de-center traditional metropolitan perspectives and bring regional voices into global conversations. Ultimately, this pillar seeks to underline the pivotal role of North East India in shaping the contours of India’s regional diplomacy, cross-border cooperation, and civilizational dialogue with East Asia. It is a step towards fostering an inclusive understanding of international relations that values the role of borderlands and peripheral regions in shaping the future of Indo-East Asian engagements.',
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

            // Activity Cards - Vertical Layout
            ActivityCard(
              imageUrl: 'assets/images/northeast/act1.png',
              title: 'Act East Policy',
              description: '',
              onTap: () {
                _launchURL(
              'https://drive.google.com/file/d/1mTujRku2lrIpq7lvn2cGYc_p5Pk4-qZV/view',
                );
              },
            ),
            ActivityCard(
              imageUrl: 'assets/images/northeast/act2.png',
              title: 'Cross Border Movements',
              description: '',
              onTap: () {
                _launchURL(
              'https://drive.google.com/file/d/1mTujRku2lrIpq7lvn2cGYc_p5Pk4-qZV/view',
                );
              },
            ),
            ActivityCard(
              imageUrl: 'assets/images/northeast/act3.png',
              title: 'Regional Dynamics',
              description: '',
              onTap: () {
                _launchURL(
              'https://drive.google.com/file/d/1mTujRku2lrIpq7lvn2cGYc_p5Pk4-qZV/view',
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
                color: Colors.white
              ),
              textAlign: TextAlign.center,
            ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 225, 229, 3),
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
