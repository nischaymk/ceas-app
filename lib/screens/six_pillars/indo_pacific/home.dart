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

class IndoHomePage extends StatelessWidget {
  const IndoHomePage({super.key});

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
              'Indo Pacific',
              style: TextStyle(
                fontFamily: 'Times New Roman Regular',
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Stretching from the Indian Ocean to the Pacific coastline of the USA, the Indo-Pacific encompasses 24 countries within its sphere. The region has become economically, strategically relevant with the rise of assertive Chinese ambitions. Simultaneously, the region, today, harbors world’s fastest growing economies, with a substantial population and market size. The region constitutes 9/10th of world’s busiest seaports, recording almost 60% of maritime trade passing through it. In an attempt to constrain overpowering Chinese influence over the region, mini-lateral partnerships have emerged in an attempt to maintain ‘free and open Indo-Pacific’. These spiraling bilateral, multi-lateral alliances from QUAD (Quadrilateral Security Dialogue), AUKUS (Australia, the United Kingdom, the United States) to Five Eyes Alliance, RCEP (Regional Comprehensive Economic Partnership), and IPEF (Indo-Pacific Economic Framework) cater to multiple aspects – security, trade, blue economy, cyber-security, counter-terrorism, infrastructure, energy, space technology, artificial intelligence.',
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
              imageUrl: 'assets/images/indopacific/act1.png',
              title: 'Indo Pacific Monitor',
              description: '',
              onTap: () {
                _launchURL(
              'https://sites.google.com/christuniversity.in/indo-pacific-monitor/home',
                );
              },
            ),
            ActivityCard(
              imageUrl: 'assets/images/indopacific/act2.png',
              title: 'Capacity Building workshops',
              description: '',
              onTap: () {
                _launchURL(
              'https://sites.google.com/christuniversity.in/capacity-building-workshops/home',
                );
              },
            ),
            ActivityCard(
              imageUrl: 'assets/images/indopacific/act3.png',
              title: 'Seminars',
              description: '',
              onTap: () {
                _launchURL(
              'https://sites.google.com/christuniversity.in/seminar-on-indo-pacific-in-tur/home',
                );
              },
            ),
            ActivityCard(
              imageUrl: 'assets/images/indopacific/act4.png',
              title: 'Certificate courses',
              description: 'Indo-Pacific Circle Curriculum',
              onTap: () {
                _launchURL(
              'https://www.ipcircle.org/online-course',
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
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          if (description.isNotEmpty)
            Text(
              description,
              style: const TextStyle(
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 241, 233, 14),
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

