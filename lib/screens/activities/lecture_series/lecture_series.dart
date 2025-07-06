import 'package:flutter/material.dart';
import 'read_more/dr_dharish_david.dart';
import 'read_more/dr_venkat_iyer.dart';
import 'read_more/profbrian.dart';
import 'read_more/vadm_ghormade.dart';
import 'read_more/pratap_hebbar.dart';
import 'read_more/prof_deepa.dart';
import 'read_more/DrBhartendu.dart';
import 'read_more/prof_xia_wang.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchURL(String url) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}

class LectureSeriesPage extends StatelessWidget {
  const LectureSeriesPage({super.key});

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
            color: Colors.teal,
          ),
        ),
      ),
    );
  }

  Widget _buildLectureCard({
    required String imgPath,
    required String speaker,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 260,
                color: const Color(0xFF2B2B2B), // Dark grey background
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                child: Text(
                  speaker,
                  style: const TextStyle(
                    fontFamily: 'Times New Roman Regular',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
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
                      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                    ),
                    child: const Text('Read More', style: TextStyle(color: Colors.white)),
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
          'Lecture Series',
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
            _buildSectionTitle('Distinguished Lectures'),
            _buildLectureCard(
              imgPath: 'assets/images/lectures/dharish.png',
              speaker: 'Dr. Dharish David Lecture',
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const DrdharishdavidPage())),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/lectures/deepa.png',
              speaker: 'Prof. Deepa’s Visit',
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfdeepaPage())),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/lectures/venkat.png',
              speaker: 'Dr. Venkat Iyer',
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const DrVenkatIyerPage())),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/lectures/sujan.png',
              speaker: 'Prof. Brian K Langernberg',
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const profbrianPage())),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/lectures/daniel.png',
              speaker: 'Ambassador Daniel Shields',
              onTap: () => _launchURL('https://drive.google.com/file/d/1JIQoJgCXUzxYMtoAMjJFeihC5IB7LRcr/view'),
            ),

            _buildSectionTitle('Inception Day Lectures'),
            _buildLectureCard(
              imgPath: 'assets/images/lectures/ghormade.png',
              speaker: 'VAdm S. N. Ghormade',
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const VadmghormadePage())),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/lectures/pratap.png',
              speaker: 'Mr. Pratap M Hebikar',
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const PrataphebbarPage())),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/lectures/dharanindra.png',
              speaker: 'Dr. Bhartendu Kumar Singh',
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const DrBhartenduPage())),
            ),

            _buildSectionTitle('China Talk Series'),
            _buildLectureCard(
              imgPath: 'assets/images/lectures/xia_wang.png',
              speaker: 'Prof. Xin Wang',
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfxiawangPage())),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/lectures/schwartz.png',
              speaker: 'Dr. Jonathan Schwartz',
              onTap: () => _launchURL('https://drive.google.com/file/d/1JIQoJgCXUzxYMtoAMjJFeihC5IB7LRcr/view'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/lectures/raj.png',
              speaker: 'Dr. V.S Ramamurthy',
              onTap: () => _launchURL('https://drive.google.com/file/d/1j3JqZLnUq-0NWcxPCXVxjV8pfn6SlRM9/view'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/lectures/lou.png',
              speaker: 'Lt. Gen Prakash Menon (Retd)',
              onTap: () => _launchURL('https://drive.google.com/file/d/1gJi6CuIxSgVADcZaGWIRZ1gOwNWBTRi-/view'),
            ),
          ],
        ),
      ),
    );
  }
}
