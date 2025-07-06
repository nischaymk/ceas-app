import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ResearchAffiliatePage extends StatelessWidget {
  const ResearchAffiliatePage({super.key});

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
          'Research Affiliates',
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
              name: 'Komal Pooja Asokan',
              role: 'Coordinator - Projects',
              description: '''Komal Pooja Asokan is a Research Affiliate at CEAS. She is currently working as correspondent at Thomson Reuters. With a background in Political Science and Sociology, her research interests include Geo-politics, Governance, Political Economy and Environmental studies. She is currently working on the paper " China's Influence Operations in South Korea..''',
              imagePath: 'assets/images/affiliates/komal.png',
              linkedInUrl: 'https://www.linkedin.com/in/komal-pooja-a-041b991a2/',
              email: 'komal.pooja@mais.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Tanvi Kashyap ',
              role: 'Project Associate & Coordinator - Social Media ',
              description: '''Tanvi Kashyap is a Research Associate at CEAS. She is currently coordinating the Centre's social media. Tanvi is a Project Assistant for the project 'U.S.-India Strategic Partnership: How Does it Matter?' in collaboration with George Washington University (GWU), Washington D.C., and the U.S. Consulate General, Chennai. She is pursuing her Masters in International Studies with research interests in East Asia countries, Indo-Pacific, Sustainable development and climate change. She is researching Indian immigration in South Korea after the Korean wave.  ''',
              imagePath: 'assets/images/affiliates/tanvi.png',
              linkedInUrl: 'https://www.linkedin.com/in/tanvi-kashyap-126763242/',
              email: 'tanvi.kashyap@mais.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Kishor Kumar V',
              role: 'Coordinator - Website',
              description: '''Kishor Kumar is a Research Affiliate and Project Assistant at CEAS. He is currently coordinating the centre's website. Kishor also serves as a Project Assistant for the project 'U.S.-India Strategic Partnership: How Does it Matter?' in collaboration with George Washington University (GWU), Washington, D.C. and the U.S. Consulate General Chennai. He holds a Master’s in International Studies with research interests in national security, military history, defense and terrorism. His current research focuses on Japan’s military buildup post-pandemic with particular attention to the North Korea factor. ''',
              imagePath: 'assets/images/affiliates/kishore.png',
              linkedInUrl: 'https://linkedin.com/in/dimple-example',
              email: 'kishor.kumar@mais.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Meenakshi V ',
              role: 'Coordinator - Publication',
              description: '''Meenakshi V is a Research Affiliate & Project Assistant at CEAS. Meenakshi was a Project Assistant for the project 'Partners in Progress: How Does the U.S.-India Strategic Partnership Matter?' in collaboration with George Washington University (GWU), Washington D.C., and the U.S. Consulate General, Chennai. She is pursuing her Masters of Science in International political Economy in S.Rajaratnam School of International Studies(RSIS), Nanyang Technological University with research interests in Political Economies of East Asia, Financial System, Geo-politics and Security Studies.''',
              imagePath: 'assets/images/affiliates/meenakshi.png',
              linkedInUrl: 'https://www.linkedin.com/in/meenakshi-v-9557281b6',
              email: 'meenakshi.v@eps.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Hansika Navin Sah',
              role: 'Coordinator -  Social Media',
              description: '''Kriti Chopra Sharma is a Senior Research Affiliate & Project Assistant at CEAS. She is the head for social media engagement and outreach in the Centre. Kritee is an expert participant for the project 'U.S.-India Strategic Partnership: How Does it Matter?' in collaboration with George Washington University (GWU), Washington D.C., and the U.S. Consulate General, Chennai. She is a Doctoral Scholar working on Chinese Nation-Building processes and Minority Identity at Christ University. She has been awarded the prestigious ICSSR Doctoral Fellowship and is now a NASC (Network for Advanced Studies in China) Fellow at Takshashila Foundation where she is working on the ‘Ecological Degradation in Inner Mongolia’. Her research interests include Chinese History, Chinese Nationalism, Minority Identity and Environmental Politics.''',
              imagePath: 'assets/images/affiliates/hansika.png',
              linkedInUrl: 'https://www.linkedin.com/in/hansikasah23/',
              email: 'hansika.sah@hep.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Vaishnavi',
              role: 'Coordinator - Design',
              description: '''Vaishnavi Gangadhar is a Research Affiliate and design coordinator at CEAS. She is currently coordinating the Centre's design and related work. Vaishnavi worked under logistics for the project 'U.S.-India Strategic Partnership: How Does it Matter?' in collaboration with George Washington University (GWU), Washington D.C., and the U.S. Consulate General, Chennai. She is pursuing her Master's in International Studies and her research interests include Cultural History in South Asia and Southeast Asia and Indo-China relations throughout the years, China's influx in the Indo-Pacific Region, Human security issues during Wars. She is currently keen on researching the similarities between the geisha system in Japan and the devadasi system in India and its influence on society.''',
              imagePath: 'assets/images/affiliates/vaishnavi2.png',
              linkedInUrl: 'https://www.linkedin.com/in/vaishnavi-gangadhar-25a45825a/',
              email: 'vaishnavigangadhar.k@hep.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Soumya JM',
              role: 'Coordinator - Incubation & Patents Cell',
              description: '''Soumya JM is a Research Affiliate at CEAS, currently coordinating the centre's website. Pursuing a B.B.A., LL.B. (Hons.) degree at the School of Law, CHRIST, she serves as a Client Counseling Assistant at Vayah Vikas, a Fellow at Bridging Gaps raising microloans for refugees, and Convenor of the International Relations and Foreign Policy Committee at School of Law. Soumya's research interests lie at the intersection of climate justice and international trade. She is particularly focused on exploring innovative approaches to emissions trading and their potential to advance global climate equity.   ''',
              imagePath: 'assets/images/affiliates/soumya.png',
              linkedInUrl: 'https://www.linkedin.com/in/soumyajm/',
              email: 'soumya.jm@law.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Ayaan Ur Rehman',
              role: 'Coordinator - Industry Outreach',
              description: '''Ayaan Ur Rehman is a Research Affiliate at CEAS. He serves as the President of the Sustainable Development Goals (SDG) Cell for Christ University and is the Convenor of the SDG Cell at the School of Law. Ayaan is also a member of Young ICCA (International Council for Commercial Arbitration). Ayaan has represented his university in renowned competitions like the 2025 Manfred Lachs International Space Law Moot. His key research interests lie in the field of Public and Private International Law, International Investment Law, Corporate Law/Governance, and Cross-Border Insolvency Law.''',
              imagePath: 'assets/images/affiliates/ayaan.png',
              linkedInUrl: 'https://www.linkedin.com/in/ayaan-73791b29a/',
              email: 'ayaan.rehman@law.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Nirmita Bhattacharya',
              role: 'Coordinator - Publication',
              description: '''Nirmita Bhattacharya is a Research Affiliate at CEAS. She is in charge of the centre's media coordination and assists editorial teams. She is currently pursuing a Master's in Media and Communication Studies, with a specialization in Advertising and Corporate Communications. Having done her undergraduate education in English and Cultural Studies, Nirmita's research interests lie in Cultural Studies and Identity Studies.  ''',
              imagePath: 'assets/images/affiliates/nirmita.png',
              linkedInUrl: 'https://www.linkedin.com/in/nirmita-bhattacharya/',
              email: 'nirmita.bhattacharya@mamcs.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Gokula Selvan VS',
              description: '''Gokula Selvan is a Research Affiliate at CEAS. He holds a Masters in International Studies with research interests in National Security and Health Diplomacy. He is researching on Health Diplomacy in South Asia.  ''',
              imagePath: 'assets/images/affiliates/gokuula.png',
              linkedInUrl: 'https://www.linkedin.com/in/gokula-selvan-v-s-964b62256/',
              email: 'gokula.selvan@mais.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Celestia Lal',
              description: '''Celestia Lal is a Research Affiliate at CEAS. She is currently working on creating a database for the CEAS App. Celestia is pursuing her Master’s in International Studies at Christ University, Bangalore. Her research interests include China’s expanding influence in global affairs, with a focus on foreign policy, regional diplomacy, and international institutions.''',
              imagePath: 'assets/images/affiliates/celetia.png',
              linkedInUrl: 'https://www.linkedin.com/in/celestia-lal-5a38a4361/?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app',
              email: 'lalcelestiaa@gmail.com',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Akshara J A',
              description: '''Akshara is a Research Affiliate at CEAS. Currently she is a student pursuing Master's degree in international studies from Stella Maris College, Chennai. Her research is on "India - ASEAN engagements in the 21st-century" focusing Cultural and Religious tourism linkages- "Ayodhaya to Angor wat", rebranding the Ramayana tourism trail across India and Southeast Asia. Her area of interests includes Chinese Foreign policy and Japanese economy. ''',
              imagePath: 'assets/images/affiliates/akshara.png',
              linkedInUrl: 'https://www.linkedin.com/in/akshara-ja-75666b362/?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app',
              email: 'aksharaja76@gmail.com',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Akshaya R Nair',
              description: '''Akshaya R Nair is a Research Affiliate at CEAS and currently she is coordinating the social media and content designing for CEAS and IPC. She is pursuing her Masters in International Studies at Christ University, Bangalore. She has a strong research interest in National and Maritime Security, International Cooperation, Climate induced Migration and Indo-Pacific Strategy. ''',
              imagePath: 'assets/images/affiliates/akshaya.png',
              linkedInUrl: 'http://www.google.com/url?q=http%3A%2F%2Fwww.linkedin.com%2Fin%2Fakshaya-r-nair-b18804346&sa=D&sntz=1&usg=AOvVaw0fZftyIkzBg4ifH4nX9rlu',
              email: 'akshaya.nair@mais.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Aryaveer Sharma',
              description: '''Aryaveer Sharma is a Research Affiliate at CEAS. He recently graduated from the Amity Institute of International Studies with a Bachelor’s degree in International Relations. In addition, he serves as the Director for Covering the Prime Minister at The Geostrata. A Fellow of the prestigious Rising Leaders Programme 2024, organised by the Konrad Adenauer Stiftung India Office, Aryaveer’s research interests encompass environmental and sustainability studies, Indian national politics, culture, soft power, feminism, and global geopolitics. ''',
              imagePath: 'assets/images/affiliates/aryaveer.png',
              linkedInUrl: 'https://www.linkedin.com/in/aryaveer-s-247293233/?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app',
              email: 'arya55133@gmail.com',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Piyush Agarwala',
              description: '''Piyush is a Research Affiliate at CEAS. He is currently pursuing his Masters in International Studies with research interests in political, economic and cultural dimensions of the East Asian region. ''',
              imagePath: 'assets/images/affiliates/piyush.png',
              linkedInUrl: 'https://www.linkedin.com/in/piyush-agarwala-71b58a242/?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app',
              email: 'piyush.agarwala@mais.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Geetishivi Kandpal',
              description: '''Geetishivi Kandpal is a research affiliate at CEAS. She holds a Master's in International studies and researching on the sinicization of Tibet and the debt trap diplomacy of China mainly in African continent.  ''',
              imagePath: 'assets/images/affiliates/geeti.png',
              linkedInUrl: 'https://www.linkedin.com/in/geetishivi-kandpal-9b29092b1/',
              email: 'geetishivi.kandpal@mais.christuniversity.in',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Ayushi Attrir',
              description: '''Ayushi Attri is a Research Affiliate at CEAS and currently works as an Intelligence Manager at MAX Security Solutions. She has a special interest in militancy in South Asia and Southeast Asia, as well as in the folklores of Japan.''',
              imagePath: 'assets/images/affiliates/ayushi.png',
              linkedInUrl: 'https://www.linkedin.com/in/a-700920a8/',
              email: 'attriayushii@gmail.com',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Drorima Chatterjee',
              description: '''Drorima is a Research Affiliate at CEAS. Her research interests includes Global water governance, the role of education in international conflicts, and the geopolitics of South Asia. She is currently researching on the Contemporary challenges in the Bay of Bengal region. ''',
              imagePath: 'assets/images/affiliates/drorima.png',
              linkedInUrl: 'https://www.linkedin.com/in/drorima-chatterjee/',
              email: 'drorimas.mail10@gmail.com',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Patricia Cherlyn',
              description: '''Patricia Cherlyn is a Research Affiliate & Project Assistant at CEAS.  She contributed as the design head for the project 'U.S.-India Strategic Partnership: How Does it Matter?' in collaboration with George Washington University (GWU), Washington D.C., and the U.S. Consulate General, Chennai. Currently, she works as an IB PYP English Facilitator at the NEST School, Chennai. Her research interests include 'Chinese Foreign Policy under Xi Jinping', 'Approach towards Ethnic Chinese diaspora' and China's economic, political and social relations.  ''',
              imagePath: 'assets/images/affiliates/patricia.png',
              linkedInUrl: 'https://www.linkedin.com/in/patricia-cherlyn-223b5a194/',
              email: 'patriciacherlyn@gmail.com',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Akshaye Mavinkurve ',
              description: '''Akshaye Mavinkurve currently works at Thomson Reuters as an Associate Multimedia News Producer, where he help curate the Reuters website. Akshaye is a Research Affiliate at the centre where he published the working paper titled "The 1986 Economic Liberalisation in Vietnam and its Impact on Income Inequality” and perspectives on North Korea and the integration of UPI in Singapore. He also worked with the outreach team helping in designing the website and brochure. ''',
              imagePath: 'assets/images/affiliates/akshaye.png',
              linkedInUrl: 'https://www.linkedin.com/in/akshaye-mavinkurve/',
              email: 'akshaye.mavinkurve19889@gmail.com',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Vaishnavi Joshi ',
              description: '''Vaishnavi Joshi is a research affiliate at CEAS, currently pursuing MPhil in Clinical Psychology with research interests in South Asian philosophies, traditional healing practices, integrative healing practices, mental health and well-being, and creating therapeutic models that cater to the needs of the Indian population in a therapeutic setting.''',
              imagePath: 'assets/images/affiliates/vaishnavi.png',
              linkedInUrl: 'https://www.linkedin.com/in/vaishnavi-joshi-138166211/',
              email: 'vaishnavijoshiacademic@gmail.com',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Alithia Clemency Paul',
              description: '''Alithia Clemency Paul is a researcher in the field of International Relations. Her research interests include border issues, security and its management, the crisis in Myanmar and its relations with neighbouring countries, intersectionality in IR, and the evolution of India’s foreign policy and its current status. She is currently working on a paper titled "Where the Blood Bleeds Blue in the Land of Red: An Account of the Uyghur Muslims in PRC.''',
              imagePath: 'assets/images/affiliates/alithia.png',
              linkedInUrl: 'https://www.linkedin.com/in/alithia-clemency-paul-001005267/',
              email: 'alithiacpaul@gmail.com',
            ),
            const SizedBox(height: 20),
            _buildAffiliateCard(
              name: 'Aishwarya Jain',
              description: '''Aishwarya Jain is a researcher in the field of Journalism Studies. Her research interests include Asian Geopolitics, Comparative Sociohistory, and the Cultural and Religious History in the Indo-China region. She is currently focusing on the sociohistorical and political relationship between the Indo-Pacific and East Asia.''',
              imagePath: 'assets/images/affiliates/aishwarya.png',
              linkedInUrl: 'https://www.linkedin.com/in/aishwarya-jain1702/',
              email: 'Aishwarya.jain@arts.christuniversity.in',
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
