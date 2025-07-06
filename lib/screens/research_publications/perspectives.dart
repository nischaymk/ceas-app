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

class PerspectivesPage extends StatelessWidget {
  const PerspectivesPage({super.key});

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontFamily: 'Times New Roman Regular',
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildLectureCard({
    required String imgPath,
    required String title,
    required String author,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: 3,
          color: Colors.grey[900],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 260,
                color: Colors.black,
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Times New Roman Regular',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                child: Text(
                  author,
                  style: const TextStyle(
                    fontFamily: 'Times New Roman Regular',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Center(
                  child: ElevatedButton(
                    onPressed: onTap,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 235, 231, 4),
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                    ),
                    child: const Text('Read More'),
                  ),
                ),
              ),
            ],
          ),
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
          'Perspectives',
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildSectionTitle('Perspectives'),

            _buildLectureCard(
              imgPath: 'assets/images/perspectives/per1.png',
              title: 'The Involvement Of Women In The Japanese Private Sector',
              author: 'Oindrila Mukherjee',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/womeninjapanesepvtsector/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/perspectives/per2.png',
              title: 'Examining Japan’s Remilitarisation',
              author: 'Aishwarya Jain',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/japansremilitarisation/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/perspectives/per3.png',
              title: 'Traditional Healing Practices in East Asia',
              author: 'Vaishnavi Joshi',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/synergy-between-japan-skorea/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/perspectives/per4.png',
              title: 'The Evolving Synergy between Japan and South Korea',
              author: 'Ayushi Attri',
              onTap: () => _launchURL('https://esbjs.christuniversity.in/'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/perspectives/per5.png',
              title: 'The Significance of Special Rupee Vostro Accounts in East Asia',
              author: 'Meenakshi V',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/special-rupee-vostro/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/perspectives/per6.png',
              title: 'Laibach and North Korea',
              author: 'Akshaye Mavinkurve',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/integrating-india-singaporeupi/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/perspectives/per7.png',
              title: 'North Korea\'s Provocation and Japan-South Korea Defence Ties',
              author: 'Muskan',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/laibach-and-north-korea/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/perspectives/per8.png',
              title: 'Russia\'s Potential Pivot to the East Due to the Strains by the West Amid the Ukraine War',
              author: 'Humsika Srikanth',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/russia-ukraine-war-and-west/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/perspectives/per9.png',
              title: 'A Comparative Study of Public Policies of India and China',
              author: 'Jefin Jerry',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/public-policy-of-india-china/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/perspectives/per10.png',
              title: 'Regional Organizations in East Asia and the Indo-Pacific',
              author: 'Rose Paul',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/regional-org-east-indopacific/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/perspectives/per11.png',
              title: 'Threats to East Asian Leadership',
              author: 'Humsika Srikanth',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/threats-east-asian-leadership/home'),
            ),
          ],
        ),
      ),
    );
  }
}
