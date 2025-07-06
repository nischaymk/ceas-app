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

class JapanHomePage extends StatelessWidget {
  const JapanHomePage({super.key});

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
              'Japan',
              style: TextStyle(
                fontFamily: 'Times New Roman Regular',
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Japan, an island in East Asia, is a trade-centric country which plays a balancing act between geopolitical confrontation and economic cooperation. Its moderate approach strives to preclude Chinese coercion whilst being a flagbearer of democracy and the reinforcer of liberal national order in the Asia-Pacific Region. It is a close ally of the United States, South Korea and Australia whilst feuding with Russia, China and North Korea on territorial grounds. Being the fourth largest economy in the world and a frequent participant in the international economic forums, it boasts of a GDP of USD 5.5 trillion, which is now threatened by a shrinking workforce, contracting population and the rank of the second lowest in the world when it comes to inward FDI. With the recent years having encouraged the country to build on its military arsenal to advanced levels, the country’s self-defence forces have evolved to a new era of self-sufficiency. The country’s cultural outreach having gained a wide follower base in the 21st century through comics such as the Manga, TV shows such as the Anime festivals such as the Tea ceremony, behavioural virtues such as hospitality and martial art forms such as Judo, contribute to its soft power capabilities, hence placing the country among the most resonating states of the world.',
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
              imageUrl: 'assets/images/japan/academic.png',
              title: 'Academic Discussions',
              description: '',
              onTap: () {
                _launchURL(
              'https://drive.google.com/file/d/1bl-Lp05awdt-fBRP6x6IfAkka16k_WDD/view',
                );
              },
            ),
            ActivityCard(
              imageUrl: 'assets/images/japan/academics.png',
              title: 'Academic Discussions',
              description: '',
              onTap: () {
                _launchURL(
              'https://drive.google.com/file/d/1mTujRku2lrIpq7lvn2cGYc_p5Pk4-qZV/view',
                );
              },
            ),
            ActivityCard(
              imageUrl: 'assets/images/japan/exchanges.png',
              title: 'Exchange Programme',
              description: '',
              onTap: () {
                _launchURL(
                  'https://drive.google.com/file/d/1mTujRku2lrIpq7lvn2cGYc_p5Pk4-qZV/view',
                );
              },
            ),
            ActivityCard(
              imageUrl: 'assets/images/japan/culturals.png',
              title: 'Cultural Fests',
              description: '',
              onTap: () { _launchURL(
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
              color: Colors.white,
              fontSize: 20,
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
              backgroundColor: const Color.fromARGB(255, 251, 239, 6),
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
