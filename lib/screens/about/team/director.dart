import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchURL(String url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $url');
  }
}

Future<void> _launchEmail(String email) async {
  final Uri emailUri = Uri(
    scheme: 'mailto',
    path: email,
  );
  if (!await launchUrl(emailUri)) {
    throw Exception('Could not launch email client for $email');
  }
}

class DirectorPage extends StatelessWidget {
  const DirectorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Director',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            fontFamily: 'Montserrat',
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: _buildDirectorCard(
              name: 'Dr. Manoharan N',
              role: 'Director - Centre for East Asian Studies',
              description: '''Prof. Manoharan N earlier served at the National Security Council Secretariat (NSCS), PMO and Ministry of Defence, Government of India. He was a South Asia Fellow at the East-West Center, Washington and is a recipient of the Mahbub-ul Haq International Award for Research. His areas of interest include internal security, terrorism, Sri Lanka, Maldives, human rights, ethnic conflicts, multiculturalism, security sector reforms, Indo-Pacific and conflict resolution. 

His main books include Developing Democracies, Counter-terror Laws and Security: Lessons from India and Sri Lanka; 'Security Deficit': A Comprehensive Internal Security Strategy for India; India's War on Terror; SAARC: Towards Greater Connectivity; Ethnic Violence and Human Rights in Sri Lanka; and Counterterrorism Legislation in Sri Lanka: Evaluating Efficacy. 

His forthcoming book is on Federal Aspects of Foreign Policy: The Role of Tamil Nadu Fishermen Issue in India-Sri Lanka Relations (Routledge). He writes regularly for leading newspapers, websites and reputed peer-reviewed international journals.''',
              imagePath: 'assets/images/director.png',
              linkedInUrl: 'https://www.linkedin.com/in/manoharan-n-b12ba523/',
              email: 'director.eastasianstudies@christuniversity.in',
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDirectorCard({
    required String name,
    required String role,
    required String description,
    required String imagePath,
    String? linkedInUrl,
    String? email,
  }) {
    return Card(
      color: Colors.grey[900],
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Image
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                width: 150,
                height: 180,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  width: 150,
                  height: 180,
                  color: Colors.grey[800],
                  child: const Icon(Icons.person, size: 50, color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Name
            Text(
              name,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),

            // Role
            Text(
              role,
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.white70,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Description
            Text(
              description,
              style: const TextStyle(
                fontSize: 15,
                height: 1.6,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),

            // Social Media Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (linkedInUrl != null)
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.linkedinIn, size: 28),
                    color: Colors.blue[400],
                    onPressed: () => _launchURL(linkedInUrl),
                  ),
                if (email != null) ...[
                  const SizedBox(width: 20),
                  IconButton(
                    icon: const Icon(Icons.email, size: 28),
                    color: Colors.red[300],
                    onPressed: () => _launchEmail(email),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
