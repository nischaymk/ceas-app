import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class JuniorAffiliatePage extends StatelessWidget {
  const JuniorAffiliatePage({super.key});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    final bool launched = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!launched) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchEmail(String email) async {
    final Uri emailUri = Uri(scheme: 'mailto', path: email);
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
          'Junior Research Affiliates',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
            fontFamily: 'Montserrat',
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
             _buildAffiliateCard(
              name: 'Athira Mary Mathew',
              role: 'Coordinator - Events & Reports',
              description: '''Athira Mathew is a Junior Research Affiliate at the CEAS, where she is involved in Event Management and Documentation. She is currently pursuing her studies in Law with a strong focus on International Human Rights Law, International Humanitarian Law, and the impact of Post-Colonialism on conceptions of the Rule of Law. Athira's current research delves into the Implementation of War Torts within the International Humanitarian Law framework. ''',
              imagePath: 'assets/images/affiliates/athira.png',
              linkedInUrl: 'https://www.linkedin.com/in/athira-mathew-5b8914219/',
              email: 'athira.mary@law.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Rituraj Mal Deka ',
              role: 'Coordinator - Logistics ',
              description: '''Rituraj Mal Deka is a Junior Research Affiliate at CEAS, where he currently coordinates the Centre’s publication wing. He is pursuing his law studies and has a keen interest in East Asian studies, particularly in enhancing connectivity between India’s Northeastern region and its bordering areas. His research emphasizes India’s Look East Policy and its implications for regional development. ''',
              imagePath: 'assets/images/affiliates/rituraj.png',
              linkedInUrl: 'https://www.linkedin.com/in/rituraj-m-deka-5764b3256/?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app',
              email: 'rituraj.deka@law.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Diya Parthasarathy',
              role: 'Coordinator - Research Hub',
              description: '''Diya Parthasarathy is a Junior Research Affiliate at CEAS, currently pursuing a Bachelor's in History and Political Science Honours with Economics. She is an Editor and Proofreader for research. Her Research interests include Ancient and Medieval History of the Indian Subcontinent and how to improving the Indo-Pacific monitor. She is currently researching on the Impact of the Cholas Overseas and the History of Bharatnatyam. ''',
              imagePath: 'assets/images/affiliates/diya.png',
              linkedInUrl: 'https://www.linkedin.com/in/diya-parthasarathy-400644326/',
              email: 'diya.parthasarathy@bahph.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Greeshma HM ',
              role: 'Coordinator - Embassy Outreach',
              description: '''HM Greeshma is a  Junior Research Affiliate at  the CEAS. Currently, she is working on an industry connect project, assisting in building and   strengthening ties between CEAS and relevant industry stakeholders. She is  currently pursuing a degree in History and Political Science, with a minor in Economics, at Christ University. She is keen on deepening her knowledge in diplomacy, international relations, and research. Her primary research interests lie in East  Asian geopolitics,  international law in the Indo-Pacific region, and sustainability in global governance. She is currently researching Cross-Border Cooperation in Renewable Energy Transitions Across the Indo-Pacific Region.''',
              imagePath: 'assets/images/affiliates/greeshma.png',
              linkedInUrl: 'https://www.linkedin.com/in/hm-greeshma-70469a218/?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app',
              email: 'hm.greeshma@bahph.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Chirag Jain',
              role: 'Coordinator - Logistics',
              description: '''Chirag Jain is a Junior Research Affiliate at CEAS. He is currently pursuing his bachelors in arts with History and Political Science as Majors and Economics as a minor. His research interests include national security, domestic and international defense policies, and the ethnic groups of India, particularly the Gorkhas and North-East tribes. Additionally, Chirag is keen on studying terrorism in India, focusing on groups like Jaish-e-Mohammed (JeM) and Lashkar-e-Taiba (LeT).''',
              imagePath: 'assets/images/affiliates/chirag.png',
              linkedInUrl: 'https://www.linkedin.com/in/chirag-jain-86785b32a/',
              email: 'chirag.jain@bahph.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Varsha S',
              role: 'Coordinator - Social Conflict & Logistics',
              description: '''Varsha S is a Junior Research Affiliate at CEAS. She is pursuing her Bachelor's in Arts with  Economics and Sociology, with research interests in gender studies, economic sociology, and the intersection of religion and social structures.''',
              imagePath: 'assets/images/affiliates/varsha.png',
              linkedInUrl: 'https://www.linkedin.com/in/vaishnavi-gangadhar-25a45825a/',
              email: 'varsha.s@baesh.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Nischay M K',
              role: 'Coordinator - CEAS Application',
              description: '''Nischay M K is a Junior Research Affiliate at CEAS. He is currently coordinating the CEAS Application and the USICC website. Nischay is pursuing his Bachelor of Technology in Computer Science and Engineering, with research interests in Defence Technology, Military History, and Terrorism. ''',
              imagePath: 'assets/images/affiliates/nischay.png',
              linkedInUrl: 'https://www.linkedin.com/in/nischay-mk/',
              email: 'nischay.mk@btech.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Adithyan S',
              description: '''Adithyan S is a Junior Research Affiliate at CEAS and a third-year law student at Christ University, Bangalore. With a deep passion for international affairs and relations, he actively contributes to the Centre's Industry Connect Programme, fostering academic-industry engagement. Adithyan has previously served as a core committee member of the SDG Cell at the School of Law and was a Peer Educator at the University, reflecting his commitment to leadership and student welfare.''',
              imagePath: 'assets/images/affiliates/adithyan.png',
              linkedInUrl: 'https://www.linkedin.com/in/adithyan-s-444a60268/?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app',
              email: 'varsha.s@baesh.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Alvin S Sebastian',
              description: '''Alvin S Sebastian is a Junior Research Affiliate at the CEAS. He is currently pursuing an undergraduate degree in History and Political Science, with Economics as a minor, at Christ University, Bangalore. He is currently researching on the Portuguese influence on the spread of Catholicism along the Coromandel Coast, with broader interests in Southeast Asian history, particularly the historical evolution and postcolonial transitions of Japan and Thailand. He is keen on uncovering lesser-known narratives and understanding the global links in historical processes.''',
              imagePath: 'assets/images/affiliates/alvin.png',
              linkedInUrl: 'https://www.linkedin.com/in/alvin-s-sebastian-a483ab27a/',
              email: 'alvins.sebastian@bahph.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Anushka S',
              description: '''Anushka S is a Junior Research Affiliate at CEAS. She is currently pursuing her B.A. (Hons.) Political Science student at the Jindal School of International Affairs. Her research interests include public policy, comparative and domestic politics, and the politics of religion.''',
              imagePath: 'assets/images/affiliates/anushka.png',
              linkedInUrl: 'https://www.linkedin.com/in/anushka-s-51b85b297/?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_apphttps://www.linkedin.com/in/akshara-ja-75666b362/?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app',
              email: 'anushkasankar2004@gmail.com',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Varsha Das',
              description: '''Varsha Das is a Junior Research Affiliate at CEAS. Varsha is pursuing her Bachelors in International Relations from Amity Institute of International Studies. Her research interests include Human Rights, Peace and Conflict Studies, and Diplomacy.''',
              imagePath: 'assets/images/affiliates/varshadas.png',
              linkedInUrl: 'https://www.linkedin.com/in/varsha-das-381303258/?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app',
              email: 'varshadas2004@gmail.com',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Shivang Mehadudia',
              description: '''Shivang Mehadudia is a Junior Research Affiliate at CEAS. His research interests include criminal law and public international law. He has been a core committee member of the Management Studies Committee at the School of Law for the past two years and previously served as a working committee member of the SDG Cell Christ University. Shivang also interned under one of his professors' for a seed-money project on Forced Migration due to climate change: A Field Study of the Pozhiyoor village of Kerala.''',
              imagePath: 'assets/images/affiliates/shivang.png',
              linkedInUrl: 'https://www.linkedin.com/in/shivang-mehadudia-9a8934276/',
              email: 'shivang.mehadudia@law.christuniversity.in',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAffiliateCard({
    required String name,
    String role = '',
    required String description,
    required String imagePath,
    String? linkedInUrl,
    String? email,
  }) {
    return Card(
      color: Colors.grey[900],
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[800],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      imagePath,
                      width: 80,
                      height: 100,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Center(
                        child: Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Times New Roman Regular',
                          color: Colors.white,
                        ),
                      ),
                      if (role.isNotEmpty) ...[
                        const SizedBox(height: 6),
                        Text(
                          role,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[400],
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                height: 1.5,
                color: Colors.white70,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 16),
            if (linkedInUrl != null || email != null)
              Row(
                children: [
                  if (linkedInUrl != null)
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.linkedinIn, size: 24),
                      color: Colors.blue[700],
                      onPressed: () => _launchURL(linkedInUrl),
                    ),
                  if (email != null)
                    IconButton(
                      icon: const Icon(Icons.email, size: 24),
                      color: Colors.red[600],
                      onPressed: () => _launchEmail(email),
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
