import 'package:flutter/material.dart';
import 'asia_slate_course.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchURL(String url) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}

class ChinaHomePage extends StatelessWidget {
  const ChinaHomePage({super.key});

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
              'China',
              style: TextStyle(
                fontFamily: 'Times New Roman Regular',
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 236, 236, 236),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'The People’s Republic of China has gone through periodic revolutions and is presently in the formal phase of creating a Harmonious Society. However, the Chinese Communist Party has departed from its former Premier Hu Jintao’s ‘Peaceful Rise’ policy and has transitioned into being more assertive in the international platform. The country is characterised by its authoritarian leadership, technological prowess, economic supremacy, homage to both its recent history as well as its centuries-old Confucianism and finally, its global ambition to consolidate power comprehensively, soft and hard domains included. The consequences of the aforementioned have placed the country in a tough diplomatic period, due to territorial disputes with almost all of its neighbours and claims of holding rights of jurisdiction over Taiwan and Hong Kong. However, the final nail in the coffin of tolerance among the international community was marked by the expansion of its naval presence in the Indian Ocean Region and the South China Sea through its maritime initiatives.',
              style: TextStyle(
                fontFamily: 'Times New Roman Regular',
                fontSize: 18,
                color: Colors.white,
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
              imageUrl: 'assets/images/china/asiaslate.png',
              title: 'Asia Slate Certificate Course',
              description:
                  'The 21st century is widely expected to be the ‘Asian century’. As Asian hubs of development, innovation, employment, culture, and region-defining geopolitics emerge and grow, it is crucial that we turn our gaze from the West to the East – including players such as China.',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AsiaSlateCoursePage()),
                );
              },
            ),
            ActivityCard(
              imageUrl: 'assets/images/china/chinatalk.png',
              title: 'China Talk Series',
              description:
                    'The Centre holds ‘China Talk Series’ aimed at an objective understanding of China periodically. Topics of the talk series touch on various aspects of China to provide a comprehensive picture of the country.',
              onTap: () => _launchURL(
              'https://sites.google.com/christuniversity.in/china-talk-series/home',
                  ),
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
              backgroundColor: const Color.fromARGB(255, 231, 216, 4),
            ),
            child: const Text(
              'Read More',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
