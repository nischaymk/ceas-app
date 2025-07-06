import 'package:flutter/material.dart';
import '../widgets/bottom_nav.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchURL(String url) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
          title: const Text(
            'Projects',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          color: Colors.black,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildProjectCard(
                  context,
                  imagePath: 'assets/images/projects/workshop.png',
                  title: 'International Workshop on Indo-Pacific Curriculum',
                  content:
                      'The Centre for East Asian Studies, Christ (Deemed to be University), in collaboration with the Indo-Pacific Circle, conducted an international workshop that brought together 13 eminent experts from the Indo-Pacific region to curate a comprehensive curriculum on the Indo-Pacific collectively. The workshop provided an inclusive and creative environment to ideate upon diverse themes that are crucial to understanding the Indo-Pacific.',
                  onTap: () => _launchURL(
                    'https://sites.google.com/christuniversity.in/ceas-international-workshop/objectives',
                  ),
                ),
                const SizedBox(height: 24),
                _buildProjectCard(
                  context,
                  imagePath: 'assets/images/projects/conference.png',
                  title: 'Partners in Progress: U.S.-India Strategic Partnership',
                  subtitle:
                      'U.S.-India International Conference June 2024 Christ (Deemed to be University), Bangalore',
                  content:
                      'The Centre for East Asian Studies (CEAS), Christ University, in collaboration with George Washington University, held the project on "Partners in Progress: How Does the U.S.-India Strategic Partnership Matter?" The objective was to gain a thorough understanding of the wide-ranging strategic and political factors impacting both India and the U.S. and to assess their implications for building strategic partnerships.',
                  onTap: () => _launchURL(
                    'https://sites.google.com/christuniversity.in/us-india-strategic-partnership/about-the-project',
                  ),
                ),
                const SizedBox(height: 24),
                _buildProjectCard(
                  context,
                  imagePath: 'assets/images/projects/usicc.png',
                  title: 'U.S.-India Cooperation Circle',
                  content:
                      'The U.S.-India Cooperation Circle aims to enhance mutual understanding between the two countries, exploring new dimensions of collaboration. The U.S. and India are strengthening their strategic partnership and share numerous objectives, including but not limited to: Clean Energy Transition, Global Health & Development, Anti Terrorism, Technology, Supply chains, Defence, Trade and Capacity Building.',
                  onTap: () => _launchURL(
                    'https://nischaymk.github.io/usicc/',
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNav(currentIndex: 4),
      ),
    );
  }

  Widget _buildProjectCard(
    BuildContext context, {
    required String title,
    String? subtitle,
    required String content,
    required VoidCallback onTap,
    required String imagePath,
  }) {
    return Card(
      color: Colors.grey[900],
      elevation: 2,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            if (subtitle != null) ...[
              const SizedBox(height: 8),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Times New Roman Regular',
                  color: Colors.white70,
                ),
              ),
            ],
            const SizedBox(height: 12),
            Text(
              content,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white70,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber.shade600,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
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
            ),
          ],
        ),
      ),
    );
  }
}
