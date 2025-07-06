import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CertificateCoursesPage extends StatelessWidget {
  const CertificateCoursesPage({super.key});

  Future<void> _launchCourseURL(BuildContext context) async {
    final Uri url = Uri.parse('https://ipcircle.org');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Could not open the website',
            style: TextStyle(fontFamily: 'Times New Roman Regular'),
          ),
          backgroundColor: Colors.redAccent,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Certificate Courses',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            const Padding(
              padding: EdgeInsets.only(top: 16, bottom: 20),
              child: Text(
                'Certificate Courses',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Times New Roman Regular',
                  color: Colors.white,
                ),
              ),
            ),

            // Course image
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/certificate_course_banner.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 40),

            // Centered Button
            Center(
              child: ElevatedButton(
                onPressed: () => _launchCourseURL(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 232, 236, 4),
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Times New Roman Regular',
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Go to Course'),
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
