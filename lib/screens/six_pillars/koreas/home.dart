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

class KoreasHomePage extends StatelessWidget {
  const KoreasHomePage({super.key});

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
              'Koreas',
              style: TextStyle(
                fontFamily: 'Times New Roman Regular',
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'The Korean Peninsula is a house divided within itself and presents a dichotomy of values. The Democratic People’s Republic of Korea (North Korea), is a totalitarian regime headed by the Kim Family since 1948 and remains enigmatic through isolation. A habitual infringer of the UN resolutions, its nuclear and ballistic missile programs underscore national agenda, whilst other sources of state income include exports of coal, minerals and textiles to China and Africa, using the former’s high seas and territorial waters for its logistical requirement. On the southern side of the Korean Demilitarised Zone lies the Republic of Korea, which is a world-renowned gadget manufacturer and the only East Asian democracy on the mainland. The country has been pragmatic by relying on the United States for its national security, even seeking protection under its nuclear umbrella, and slanting towards China to fulfil its economic goals through the striking of free trade agreements. In the process, it has become the fulcrum of US-China tensions, causing revised defence bills by the former and economic boycott by the latter. Nevertheless, South Korea remains as one of the prosperous countries of the Asia-Pacific, with K-Pop, K-Drama and K-Beauty adding to its soft power quotient.',
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
              imageUrl: 'assets/images/korea/languagecourse.png',
              title: 'Korean Language Course',
              description: '',
              onTap: () {
                _launchURL(
              'https://drive.google.com/file/d/1mTujRku2lrIpq7lvn2cGYc_p5Pk4-qZV/view',
                );
              },
            ),
            ActivityCard(
              imageUrl: 'assets/images/korea/lectures.png',
              title: 'Guest Lectures',
              description: '',
              onTap: () {
                _launchURL(
              'https://drive.google.com/file/d/1mTujRku2lrIpq7lvn2cGYc_p5Pk4-qZV/view',
                );
              },
            ),
            ActivityCard(
              imageUrl: 'assets/images/korea/exchange.png',
              title: 'Exchange Programmes',
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
              color: Colors.white
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
              backgroundColor: const Color.fromARGB(255, 220, 224, 4),
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
