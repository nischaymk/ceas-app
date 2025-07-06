import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/bottom_nav.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

Future<void> _launchURL(String url) async {
  final Uri uri = Uri.parse(url);
  final bool launched = await launchUrl(uri, mode: LaunchMode.externalApplication);
  if (!launched) {
    throw Exception('Could not launch $url');
  }
}

Future<void> _launchEmail(String email) async {
  final Uri emailUri = Uri(
    scheme: 'mailto',
    path: email,
  );
  final bool launched = await launchUrl(emailUri);
  if (!launched) {
    throw Exception('Could not launch email client for $email');
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
          'Contact Us',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Contact us at
            GestureDetector(
              onTap: () => _launchEmail('eastasian.studies@christuniversity.in'),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(
                    fontFamily: 'Times New Roman Regular',
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: 'Contact us at: ',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                    TextSpan(
                      text: 'eastasian.studies@christuniversity.in',
                      style: TextStyle(decoration: TextDecoration.none),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),

            // For internships
            GestureDetector(
              onTap: () => _launchEmail('contact.ceas@christuniversity.in'),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(
                    fontFamily: 'Times New Roman Regular',
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: 'For internships: ',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                    TextSpan(
                      text: 'contact.ceas@christuniversity.in',
                      style: TextStyle(decoration: TextDecoration.none),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Social icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _iconBox(FontAwesomeIcons.linkedinIn,
                    () => _launchURL('https://www.linkedin.com/in/ceas-christ-university/')),
                _iconBox(FontAwesomeIcons.instagram,
                    () => _launchURL('https://www.instagram.com/ceas_christuniversity?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==')),
                _iconBox(FontAwesomeIcons.xTwitter,
                    () => _launchURL('https://x.com/CEAS_eastasia?t=wffWl4StaHCsfwkuD3ZfXw&s=08')),
                _iconBox(FontAwesomeIcons.youtube,
                    () => _launchURL('https://www.youtube.com/@CentreforEastAsianStudies')),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(currentIndex: 7),
    );
  }

  Widget _iconBox(IconData icon, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, size: 28, color: Colors.white),
        ),
      ),
    );
  }
}
