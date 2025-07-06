import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SeniorAffiliatePage extends StatelessWidget {
  const SeniorAffiliatePage({super.key});

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
          'Senior Research Affiliates',
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
              name: 'Ashwin Dhanabalan',
              role: 'Coordinator - Projects',
              description: '''Ashwin Dhanabalan is a Doctoral Scholar of Konrad Adenauer Stiftung and Coordinator Projects, Centre for East Asian Studies, Christ University, Bengaluru. He has been the Project Associate for two major research projects by the U.S. Department of State, "Partners in Progress: How Does the U.S.-India Partnership Matter?" and "Devising a Pedagogy on the Indo-Pacific." He has also been invited to various discussions and dialogues, including the Konrad Adenauer Stiftung - 'A Rising Leader' 2024, the prestigious Australia India Leadership Dialogue 2022 as an 'Observer', the Western Sydney University's Partnerships with Impact dialogue aimed at promoting the United Nations' Sustainable Development Goals (SDGs) as a 'Delegate', and the first-ever Public Policy Fest on a national level organized by the Department of Public Policy, Christ University where he was a 'Key Panellist' discussing on the ethical considerations related to Artificial Intelligence and the potential of Green Hydrogen in India. At the Centre for East Asian Studies, he assists the Director, Dr. N. Manoharan, in Coordinating the Diplomatic Engagements, University/Institute Collaborations, Publications, Academic Initiatives, and Projects of the Centre.".''',
              imagePath: 'assets/images/affiliates/ashwin_dhanabalan.png',
              linkedInUrl: 'https://www.google.com/url?q=https%3A%2F%2Fwww.linkedin.com%2Fin%2Fashwin-immanuel-dhanabalan%2F&sa=D&sntz=1&usg=AOvVaw27mZMkURvegr5NqUNIJQFV',
              email: 'eastasian.studies@christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Avishka Ashok',
              role: 'Coordinator - USICC Student Chapter',
              description: '''Avishka Ashok is a Senior Research Affiliate at CEAS, currently coordinating the Student Chapter of the U.S.-India Cooperation Circle (USICC). Avishka is also a doctoral scholar in the Department of International Studies, Political Science, and History. Her thesis focuses on China's climate action goals and the potential for their emulation in India. Her research interests encompass China, climate change, politics in East Asia, and the Chinese language. ''',
              imagePath: 'assets/images/affiliates/avishka_ashok.png',
              linkedInUrl: 'https://www.google.com/url?q=https%3A%2F%2Fwww.linkedin.com%2Fin%2Favishka-ashok&sa=D&sntz=1&usg=AOvVaw19QXZ9kVcTi3V9LYPwIQub',
              email: 'avishka.ashok@res.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Dimple Kariya',
              role: 'Coordinator - Internship',
              description: '''Dimple Kariya is a Senior Research Affiliate at CEAS and a doctoral scholar at the Department of International Studies, Political Science, and History. As an Internship Coordinator, she facilitates communication with the director and coordinates with the interns. Her research interests include the intersection of sociocultural history, identity, and visual culture. Her research looks at the complex themes of identity with a focus on the South Asian diasporas. Dimple’s journey as a Young India Fellow at Ashoka University played a key role in broadening her worldview. Since then, she has continued to build on this experience to gain a deeper understanding of how identities are formed and evolve in a globalized world. ''',
              imagePath: 'assets/images/affiliates/dimple_kariya.png',
              linkedInUrl: 'https://www.google.com/url?q=https%3A%2F%2Fwww.linkedin.com%2Fin%2Fdimple-kariya-a727551b4%2F&sa=D&sntz=1&usg=AOvVaw3V0LRT9Z-o7oXHJQkTl4Er',
              email: 'kariyadimple.anand@res.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Timhna S',
              role: 'Coordinator - Strategic Plan',
              description: '''Timhna S is a Senior Research Affiliate at CEAS. She currently serves as the Secretary of the Strategic Planning Committee for CEAS and is also a Teaching Assistant at Seoul National University. Timhna is pursuing her doctoral studies at Christ University, Bangalore, with research focused on the linkages between Maoism and religion in South Asia. She has also been a project assistant in the Centre's research projects. Her research interests span various facets of international relations, particularly regional security dynamics, governance systems and socio-economic and structural development. Geographically, her work concentrates on Indo-Pacific, East Asia and South Asia.''',
              imagePath: 'assets/images/affiliates/timhna_s.png',
              linkedInUrl: 'https://www.google.com/url?q=https%3A%2F%2Fwww.linkedin.com%2Fin%2Ftimhna-s-4849942a2%2F&sa=D&sntz=1&usg=AOvVaw0WHD5boqT52a1sbXCkkOQO',
              email: 'timhna.s@res.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Kriti Chopra',
              role: 'Coordinator - CAITT & Podcasts',
              description: '''Kriti Chopra Sharma is a Senior Research Affiliate & Project Assistant at CEAS. She is the head for social media engagement and outreach in the Centre. Kritee is an expert participant for the project 'U.S.-India Strategic Partnership: How Does it Matter?' in collaboration with George Washington University (GWU), Washington D.C., and the U.S. Consulate General, Chennai. She is a Doctoral Scholar working on Chinese Nation-Building processes and Minority Identity at Christ University. She has been awarded the prestigious ICSSR Doctoral Fellowship and is now a NASC (Network for Advanced Studies in China) Fellow at Takshashila Foundation where she is working on the ‘Ecological Degradation in Inner Mongolia’. Her research interests include Chinese History, Chinese Nationalism, Minority Identity and Environmental Politics.''',
              imagePath: 'assets/images/affiliates/kriti_chopra.png',
              linkedInUrl: 'https://www.google.com/url?q=https%3A%2F%2Fwww.linkedin.com%2Fin%2Fkriti-chopra%2F&sa=D&sntz=1&usg=AOvVaw2eweN9uVGeIqkksCbxbNaf',
              email: 'kriti.chopra@res.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Mohammed Sabtain',
              role: 'Coordinator - Logistics',
              description: '''Mohammed Sabtain is the Senior Research Affiliate & Project Assistant at CEAS. He is currently pursuing his PhD in International Studies at Christ University, his area of focus is West Asia specifically - Saudi Arabia. His other areas of interest are Indo-Pacific Circle, Defence & National Security. He has worked on various projects at CEAS over the time, to name a few are “Devising a Regional Pedagogy on the Indo-Pacific” & “India-U.S. Relations: The Way Ahead” in collaboration with US Consulate General, Chennai and many others.''',
              imagePath: 'assets/images/affiliates/mohammed_sabtain.png',
              linkedInUrl: 'http://www.google.com/url?q=http%3A%2F%2Flinkedin.com%2Fin%2Fmohammed-sabtain-823b3221a&sa=D&sntz=1&usg=AOvVaw2-IbkyQIamEqfnuvYSAfAa',
              email: 'mohammed.sabtain@res.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Keshav Verma',
              description: '''Keshav Verma is a Doctoral Scholar at the Department of International Studies, Political Science and History and a Senior Research Affiliate at the CEAS. Currently, he works as a Research Associate at the Indian Council of World Affairs, Ministry of External Affairs, New Delhi. His research areas are Polar Regions, Outer Space, High Seas, India's Foreign Policy and the Indo-Pacific Region. ''',
              imagePath: 'assets/images/affiliates/keshav_verma.png',
              linkedInUrl: 'http://www.google.com/url?q=http%3A%2F%2Flinkedin.com%2Fin%2Fkeshav-verma-379b27241&sa=D&sntz=1&usg=AOvVaw0OQNralkWyQwXIUj15HaHD',
              email: 'keshav.verma@res.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Gurvinder Kaur',
              description: '''Gurvinder Kaur is a Senior Research Affiliate at CEAS. Her research interests includes  Indian Ocean region, Indo - Pacific region and Non traditional Security Threats. She is currently researching on the topic, India's role in combating Maritime Piracy in Indian Ocean: A study.''',
              imagePath: 'assets/images/affiliates/gurvinder_kaur.png',
              linkedInUrl: 'https://linkedin.com/in/gurvinder-example',
              email: 'gurvinder.kaur@res.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Abirami A V',
              description: '''Abirami is a Senior Research Affiliate at CEAS. She is currently working as Assistant Professor in the Department of English at Jain University, Bangalore. She is pursuing her PhD from Christ University. Her research topic focus on a particular musical instrument called Parai from Tamil Nadu. The research explores how the reception of Parai artists and the politics surrounding the drum are examined in her study. ''',
              imagePath: 'assets/images/affiliates/abirami.png',
              linkedInUrl: 'http://www.google.com/url?q=http%3A%2F%2Flinkedin.com%2Fin%2Fabirami-%25E3%2581%2582%25E3%2581%25B3%25E3%2582%2589%25E3%2581%25BF-a-v-8b90a9215&sa=D&sntz=1&usg=AOvVaw1shA0J_p9P0Mslt5EKxb3u',
              email: 'abirami.av@res.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Guillermo Moya Barba',
              description: '''Guillermo Moya Barba is a Research Affiliate at CEAS. He is a Spanish PhD Researcher at Rey Juan Carlos University in Madrid, and he is currently working as legal advisor at the Embassy of Spain in the Netherlands. He writes articles on International Relations, International Security and International Law for scientific journals. He is focused on International Environmental Law and Rights of Nature, specially in the Southeast Asian region. ''',
              imagePath: 'assets/images/affiliates/guillermo_moya_barba.png',
              linkedInUrl: 'http://www.google.com/url?q=http%3A%2F%2Flinkedin.com%2Fin%2Fguillermo-moya-barba-389aabb2&sa=D&sntz=1&usg=AOvVaw2zkDse10TC6q0om9XPIEGk',
              email: 'gmoyab@yahoo.es',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Hari Yadav G',
              description: '''Hari Yadav is a Research Affiliate at CEAS and an ICSSR Doctoral Fellow at Pondicherry University. His academic interests encompass International Relations Theory, Geopolitics, Sino-India Relations, the People's Liberation Army (PLA) Navy, Civil-Military Relations, the Indian Ocean Region, Science and Technology Studies, and Non-Traditional Security Threats. Currently, his doctoral research focuses on China's geopolitical interests in the Indian Ocean Region and the modernization of the PLA Navy since the 2000s. ''',
              imagePath: 'assets/images/affiliates/hari_yadav_g.png',
              linkedInUrl: 'http://www.google.com/url?q=http%3A%2F%2Flinkedin.com%2Fin%2Fhari-yadav-950a06229&sa=D&sntz=1&usg=AOvVaw1GhgVbUmt735Ow6vUQwAg4',
              email: 'hariyadav9230@gmail.com',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Rakesh Mochahary',
              description: '''Rakesh Mochahary is a Senior Research Affiliate at CEAS. He is currently pursuing his PhD at CHRIST (Deemed) University on the research titled: History, Identity and Culture: A Study of Bodo Community in the 19th and 20th Centuries in Assam. He also holds the position of a scholar at the Institute for Advanced Studies in Asian Cultures and Theologies (IASACT- 2024), Divinity School of Chung Chi College, The Chinese University of Hong Kong and completed the project titled Populism, Religion and Civic Space in Northeast India. His latest publication is "Rise of Populism in Northeast India: A Case of Assam" (DOI: https://doi.org/10.17645/si.8546) and "Documentary Film in the Age of New Populism" (https://doi.org/10.1007/978-981-16-9859-0_429-1). His upcoming papers are “Voices of Elders:” The Evolution of the Bodo Movement through the Student Union and the Rebel Group in Assam, Northeast India and "Majority vs Minority: Politics in Northeast India." His research interests are the history, culture, and politics of Northeast India and the culture and traditions of Asia and South-East Asia. ''',
              imagePath: 'assets/images/affiliates/rakesh_mochahary.png',
              linkedInUrl: 'https://www.google.com/url?q=https%3A%2F%2Fwww.linkedin.com%2Fin%2Frakesh-mochahary-718a2823b&sa=D&sntz=1&usg=AOvVaw3y3EVQaBUtm-nBMaG6SHQ4',
              email: 'rakesh.mochahary@res.christuniversity.in',
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
