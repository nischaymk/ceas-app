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

class WorkingPapersPage extends StatelessWidget {
  const WorkingPapersPage({super.key});

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
                      backgroundColor: const Color.fromARGB(255, 226, 233, 3),
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
          'Working Papers',
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
            _buildSectionTitle('Working Papers'),
            _buildLectureCard(
              imgPath: 'assets/images/papers/paper1.png',
              title: 'Han Minorities in the Neighbourhood: How are They Treated by China’s Neighbours?',
              author: 'Patricia Cherlyn P',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/han-minorities-neighbourhood/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/papers/paper2.png',
              title: 'Cultural Resurgence In 21st Century: Strengthening Japan - India Relations',
              author: 'Josna Shibu Mathew',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/cultural-resurgence-21-century/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/papers/paper3.png',
              title: 'The 1986 Economic Liberalisation In Vietnam And Its Impact On Income Inequality',
              author: 'Akshaye Mavinkurve',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/1986-economic-liberalisation/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/papers/paper4.png',
              title: 'Xi Jinping\'s Third-term: A Reassessment of the Future India-China Relations',
              author: 'Neeraj Singh Manhas and Ananaya Ameya',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/xijinping-third-term/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/papers/paper5.png',
              title: '30 Years of ASEAN-India Relations: Advances and Challenges',
              author: 'Niranjan Marjani',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/30-years-of-asean/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/papers/paper6.png',
              title: 'The Emergence of the Shan State as a Leading Drug Producer',
              author: 'Guillermo Moya Barba',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/emergence-of-the-shan-state/home'),
            ),
          ],
        ),
      ),
    );
  }
}
