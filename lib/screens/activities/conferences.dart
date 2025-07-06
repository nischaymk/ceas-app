import 'package:flutter/material.dart';
import 'read_more/conference_one.dart';
import 'read_more/conference_three.dart';
import 'read_more/conference_four.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchURL(String url) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}

class ConferencesPage extends StatelessWidget {
  const ConferencesPage({super.key});

  Widget _buildConferenceCard({
    required String imagePath,
    required String title,
    required String description,
    required VoidCallback onTap,
  }) {
    return Card(
      color: Colors.grey[900],
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                imagePath,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'Times New Roman Regular',
                fontSize: 18,
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
                color: Colors.white70,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 230, 238, 4),
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Read More',
                style: TextStyle(
                  fontFamily: 'Times New Roman Regular',
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Conferences',
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Our conferences bring together scholars and experts from various fields to discuss pressing issues and share research findings. These events provide platforms for intellectual exchange and collaborative opportunities.',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white70,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24),

            _buildConferenceCard(
              imagePath: 'assets/images/conferences/conference1.png',
              title: 'International Conference',
              description: 'A Decade of Act East Policy: Impact on India-ASEAN Relations and Regional Dynamics',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const ConferenceOnePage()));
              },
            ),

            _buildConferenceCard(
              imagePath: 'assets/images/conferences/conference2.png',
              title: 'U.S-India International Conference',
              description: 'Partners in Progress: How does the U.S-India Strategic Partnership Matter?',
              onTap: () => _launchURL('https://drive.google.com/file/d/1QLOgtt-9IuvvFW1-fr_DbAOyNjCbUJ4e/view'),
            ),

            _buildConferenceCard(
              imagePath: 'assets/images/conferences/conference3.png',
              title: 'All India Conference on East Asian Studies',
              description: 'East Asia in the Post-Pandemic Era: Internal and External Dynamics',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const ConferenceThreePage()));
              },
            ),

            _buildConferenceCard(
              imagePath: 'assets/images/conferences/conference4.png',
              title: 'International Conference',
              description: 'ASEAN Centrality in the Indo-Pacific: Prospects and Challenges for Security, Peace, and Prosperity',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const ConferencefourPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
