import 'package:flutter/material.dart';

class ConferenceOnePage extends StatelessWidget {
  const ConferenceOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'International Conference – Act East Policy',
          style: TextStyle(fontFamily: 'Montserrat',color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main Title
            const Center(
              child: Text(
                'International Conference on A Decade of Act East Policy: '
                'Impact on India-ASEAN Relations and Regional Dynamics',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Times New Roman Regular',
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'Hosted by CEAS and C3S',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Times New Roman Regular',
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              'The Chennai Centre for China Studies (C3S) in collaboration with the Centre for East Asian Studies (CEAS), Christ University, '
              'organized a one-day International Conference on the theme "A Decade of Act East Policy: Impact on India-ASEAN Relations and Regional Dynamics" '
              'on 24th February 2025 at Christ University Central Campus, Bengaluru.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 10),
            const Text(
              'Bringing together noted experts in the field, the conference sought to look at 10 years of India\'s "Act East Policy". '
              'The conference also gave opportunity to students and scholars to reflect on key themes like "human security" and "socio-economic development" in the ASEAN region.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),


            // Special Address (Screenshot 2025-07-02 143756.png)
            const Text(
              ' INAUGURAL SESSION',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,

              ),
            ),

            const SizedBox(height: 15),
            const Text(
                'The inaugural session commenced with the Welcome Address by Dr. N. Manoharan, Director, Centre for East Asian Studies. In addition to welcoming the dignitaries, experts, and audience, he provided a broader context for the 2nd edition of the collaborative conference between C3S and CEAS, centered around the theme of commemorating 10 years of India’s Act East Policy. He also emphasized that the core purpose of CEAS and C3S coming together was to identify and build the capacity of the younger generation of scholars.\n\nCommodore Vasan, Director-General of C3S, in his Keynote Address, highlighted the transition from “Look East” to “Act East,” stressing the importance of auditing India’s actions over the past decade and shaping the future of India-ASEAN relations. He addressed economic challenges and opportunities, noting that India’s trade with ASEAN has reached 150 billion dollars a relatively small figure compared to China. He underscored the importance of soft power, security issues, and cultural development, along with maritime security and trade engagements.',
            style: TextStyle(
            fontSize: 18,
            fontFamily: 'Times New Roman Regular',
            color: Colors.white,
            ),
            textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 16),
            Image.asset('assets/images/conferences/intconf1.png'), // Screenshot 1
            const SizedBox(height: 25),

            const SizedBox(height: 8),
            const Text(
              'Ms. Nutan Kapoor Mahawar, Acting Director-General and Additional Secretary, the Indian Council of World Affairs (ICWA), in her ‘Inaugural Address’, touched on India’s transition from “Look East” to “Act East” policy that strengthened India’s ties with ASEAN countries. Key initiatives in India-ASEAN relations include sectoral dialogue and full dialogue partnerships, with ‘ASEAN centrality’ playing a crucial role in regional politics, security, and cultural development. Despite challenges like China’s influence in the South China Sea, India has pursued maritime cooperation, sustainable goals, and anti-terrorism efforts. The overarching goal remains enhancing India-ASEAN relations, fostering economic cooperation, and supporting the Indian diaspora’s welfare in ASEAN countries.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 12),
            Image.asset('assets/images/conferences/intconf2.png'), // Screenshot 2
            const SizedBox(height: 25),

            const SizedBox(height: 8),
            const Text(
              'This was followed by the ‘Special Address’ by Mr. Saravana Kumar Kumaravasagam, Consul General of Malaysia for South India. He expressed appreciations to C3S and CEAS for organizing the event and extending the invitation. Over the decades, ASEAN has evolved to ensure peace and stability amid global power dynamics. Malaysia, as chair of ASEAN this year, aims to promote inclusivity and sustainability through people-centric policies ensuring long-term stability. Efforts include increasing intra-ASEAN trade and economic partnerships, with East Timor poised to become the 11th member. Two summits are planned, with a new roadmap for ASEAN ties until 2035. Focus areas include a combined market of 2 million people, digital economies, sustainable energy, strategic security cooperation, student exchange programs, digital transformation, smart cities, green energy, sustainable infrastructure, and resilient trade networks.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),


            const SizedBox(height: 12),
            Image.asset('assets/images/conferences/intconf3.png'), // Screenshot 3
            const SizedBox(height: 15),

            const Text(
              'This was followed by a book launch which was the fruit of the previous C3S conference. Titled China’s Assertive Posturing in the Indo-Pacific and Prospects for Indo-ASEAN Collaboration, the book served as a reminder of the success of previous conferences and scope for future expectations.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 12),
            Image.asset('assets/images/conferences/intconf4.png'), // Screenshot 3
            const SizedBox(height: 15),

            const Text(
              'Following the book launch was the Presidential address by Dr. Fr. Jose CC, Vice Chancellor, Christ University. He spoke on enhancing economic trade and security partnerships and also highlighted that only 40% of Indian graduates are employable, emphasizing the need to understand knowledge, skills, and attitudes. He emphasized the need for youth to upgrade their skills and the ability of students to grasp opportunities to enhance knowledge, skills, and attitudes. He noted that the Act East Policy (AEP) has been a stepping stone for India to engage in the Indo-Pacific, highlighting ASEAN’s significant role in the economic landscape and regional cooperation for diplomatic ties. ',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 12),
            Image.asset('assets/images/conferences/intconf5.png'), // Screenshot 3
            const SizedBox(height: 15),

            const SizedBox(height: 12),
            Image.asset('assets/images/conferences/intconf6.png'), // Screenshot 3
            const SizedBox(height: 15),


            // Book Launch and Presidential Address (Screenshot 2025-07-02 143818.png)
            const Text(
              'Maritime Security as the Pillar of India-ASEAN Engagement in The Indo-Pacific - Commodore Venugopal Vengalil',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            
            const SizedBox(height: 8),
            const Text(
              'With over 30 years of service in the Indian Navy, Cmde Venugopal focused on maritime security, emphasizing the South China Sea. He highlighted key components of maritime security, including ports, ocean resources, and strategic assets, and identified challenges such as piracy, trafficking, and China’s hegemony. Cmde Venugopal discussed China’s disregard for the code of conduct and the strategic importance of balancing superpower effects. He stressed the need for understanding India’s maritime positions and the importance of international cooperation through seminars and exchanges.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),

            const Text(
              'NATO in the Indo-Pacific: Dilemmas for India and ASEAN - Dr. Vijay Sakhuja',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            
            const SizedBox(height: 8),
            const Text(
              'Dr. Sakhuja, Head of CEGIS, REVA University, discussed NATO in the Indo-Pacific and the role of international organizations. He addressed the impact of the Trump presidency on regional perspectives and the US announcement of a non-NATO military alliance. Dr. Sakhuja highlighted the strategic importance of collective security, the role of China and other countries, and Japan’s military strength. He discussed NATO’s mutual defense principles and the push for increased defense budgets.He emphasized Delhi’s focus on multilateral alignments and the dynamic nature of the current world order, suggesting a possible shift to a new Yalta-like order.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),

            const Text(
              'India-Philippines Maritime and Defence Security Partnership Since India’s Act East Policy: Evolution And Opportunities - Dr. Don Mclain Gill',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            
            const SizedBox(height: 8),
            const Text(
              'A geopolitical analyst and lecturer at Da La Salle University, Manila, Philippines, Dr. McGill emphasized India’s role in ASEAN, highlighting the importance of understanding territorial seas’ structure and ownership. Since 2023, China’s maritime militia has escalated provocations against the Philippines, encroaching on their water rights. Dr. Gill discussed India’s non-traditional security partnership with the Philippines, focusing on modernization programs and security activities. He highlighted the role of Marcos in shaping maritime ties and India’s favorable position in Manila’s security studies. Key defence convergences between the two countries include the KASH surface-to-air missiles, and synergies between India’s Atmanirbhar Bharat and the Philippines self-reliance policies. Despite gaps, the Act East Policy (AEP) is gaining momentum.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),
            const Text(
              'India’s Smart Power Projection in ASEAN: A Case Study of Vietnam - Group Captain AV Chandrashekar',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            
const SizedBox(height: 8),
const Text(
  '''The presentation by Group Capt. Chandrashekar covered India’s smart power projection in ASEAN, focusing on security in Vietnam. 
India has seven defense attachés with ten nations, and trade with the region has doubled to over \$150 billion. 
Thailand expressed interest in armored vehicles from Bharat Forge and tanks from TATA. HAL established an office in Kuala Lumpur, 
and ISRO set up a station in Indonesia, much to China’s dismay.

Counterterrorism initiatives have been set up in ASEAN countries, promoting India’s role in countering terrorism training. 
A new syllabus tailored for each country includes navigation training, communications, sniping, neutralizing hostages, and jungle survival. 
Tabletop exercises for women officers aim to strengthen gender inclusivity.

Training Vietnamese pilots in Su-30 fighters and overcoming language barriers with AI-based translation centers were also discussed. 
The Hanoi Defence Expo 2024 had significant Indian representation, highlighting historic relations despite China's influence.

This was followed by a Q&A session where topics discussed included the impact of Russia on India-Philippines relations, 
the proximity of India and the Philippines to major powers like China, Japan, and Korea, and its effect on power dynamics.''',
  style: TextStyle(
    fontSize: 18,
    fontFamily: 'Times New Roman Regular',
    color: Colors.white,
  ),
  textAlign: TextAlign.justify,
),


            const Text(
              'SESSION 2',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'OPPORTUNITIES UNDER THE "ACT EAST" POLICY: STRENGTHENING INDIA-ASEAN PARTNERSHIPS IN TECHNOLOGY AND DIGITAL TRANSFORMATION',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            const Text(
              'Chair: Lieutenant General C.A. Krishnan, PVSM, UYSM, AVSM',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'The session focused on the evolving India-ASEAN partnerships in technology and digital transformation under the Act East Policy (AEP). The discussions emphasized India’s digital infrastructure, ASEAN’s digital advancements, cybersecurity, data privacy, and the potential for collaboration in the semiconductor industry. Lieutenant General C.A. Krishnan provided an overview of the geopolitical environment influencing India-ASEAN technology cooperation. He highlighted ASEAN’s economic strength, digital transformation efforts, and strategic positioning between China and India. He stressed the need for India to complement ASEAN’s advantages with its own expertise in digital infrastructure, artificial intelligence, and emerging technologies.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),

            const Text(
              'Strengthening Digital Public Infrastructure: India’s Path Under Act East Policy Through Lessons from Southeast Asia - Dr. Anudeep Gujjeti',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 8),
            const Text(
              'Dr. Gujjeti analyzed India’s digital public infrastructure (DPI) and its potential applications in ASEAN. He detailed India’s rapid digital expansion, with 900 million internet users and significant growth in digital transactions. He explained how DPI has evolved from problem-specific applications to an integrated ecosystem providing digital services. ASEAN’s digital economy is advancing with initiatives to standardize data governance. He pointed out successful cross-border digital collaborations like the UPI-PayNow integration between India and Singapore. Challenges such as regulatory diversity, cybersecurity threats, and AI governance were discussed as potential hurdles.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),

            const Text(
              'India-ASEAN Collaboration in Cybersecurity and Data Privacy - Col. A.J. Vijayakumar',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Col. A.J. Vijayakumar addressed the complexities of cybersecurity and data privacy in the Indo-ASEAN context. He elaborated on the need for a balance between government control of data and private sector innovation. India’s subsea cable infrastructure connecting to ASEAN is crucial but also vulnerable to cyber threats. ASEAN’s cybersecurity framework, including the ASEAN Cybersecurity Cooperation Strategy 2021-2025, was highlighted. Indo-ASEAN collaborations on cyber threat intelligence sharing, digital crime prevention, and regulatory standardization have shown promise. The transformative role of artificial intelligence and quantum computing in cybersecurity was also explored.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 15),

            const Text(
              'India’s Act East Policy: Catalyzing the Semiconductor Industry Through Lessons From Southeast Asia - Mr. Arun Mampazhy',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Mr. Arun Mampazhy explored India’s semiconductor industry in the context of ASEAN’s experience. He noted India’s late entry into semiconductor manufacturing and drew lessons from ASEAN nations with established semiconductor packaging and assembly industries, particularly Malaysia and Vietnam. He discussed India’s recent policy shifts aimed at fostering semiconductor manufacturing and supply chain diversification. The presentation compared the trajectories of global semiconductor leaders like Taiwan and the U.S. and examined challenges such as infrastructure, investment incentives, and research collaborations that India must address to strengthen its semiconductor sector.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),
            const Text(
              'Q&A Session and Closing Remarks',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'The session concluded with a discussion on balancing ASEAN’s engagement with both India and China in the digital space. Panelists stressed the importance of fostering India-ASEAN digital partnerships while acknowledging the geopolitical challenges posed by China’s dominance in digital infrastructure. Lt. Gen. Krishnan reiterated the need for India to position itself as a valuable technological partner through continuous innovation and strategic collaborations. The session underscored India’s potential role in ASEAN’s digital future, emphasizing cybersecurity, digital infrastructure, and semiconductor development as key areas for cooperation under the Act East Policy.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 12),
            Image.asset('assets/images/conferences/intconf7.png'), // Screenshot 6
            const SizedBox(height: 25),

            const Text(
              'SESSION 3 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'FOSTERING ECONOMIC SYNERGIES – ENHANCING INDIA-ASEAN TRADE AND CONNECTIVITY UNDER ACT EAST POLICY',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Chair: Mr. M.R. Sivaraman IAS (Retd.), Former Revenue Secretary, Government of India, Former Executive Director, IMF',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Mr. M.R. Sivaraman opened the session by highlighting the historical and contemporary dynamics of India-ASEAN trade relations. He emphasized the importance of human resource development, economic openness, and infrastructure investments that have propelled ASEAN countries forward. He urged students and participants to prioritize knowledge acquisition and continuous learning to foster economic growth.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 12),
            Image.asset('assets/images/conferences/intconf8.png'), // Screenshot 7
            const SizedBox(height: 15),

            const SizedBox(height: 15),
            const Text(
              'Opportunities for Building India-ASEAN Trade and Connectivity Cooperation under Act East Policy - Dr. Gitanjali Sinha Roy',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Dr. Gitanjali Sinha Roy discussed the immense potential for enhancing trade and connectivity between India and ASEAN. She outlined India’s position as ASEAN’s fourth-largest trading partner and the possibilities for further strengthening this partnership through digital trade and financial technology integration. Dr. Roy suggested greater cooperation in the micro, small, and medium enterprises (MSME) sector and advocated for cross-border payment integration through India’s UPI system with ASEAN’s FinTech networks. She also highlighted organic farming, agritech solutions, and sustainable agriculture as key sectors for future collaboration.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 15),
            const Text(
              'China and India’s Trade and Investment in Southeast Asia: Implications for the Act East Policy – Dr. Dharish David',
            style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Times New Roman Regular',
            color: Colors.white,
  ),
),

            const SizedBox(height: 8),
            const Text(
              'Dr. Dharish David provided insights into the competitive landscape of India and China’s trade and investment patterns in Southeast Asia. He elaborated on the growing influence of China in the region, particularly in infrastructure investments and digital connectivity. He discussed the implications of this competition on India’s Act East Policy and the need for India to leverage its strengths in technology, pharmaceuticals, and traditional medicine to enhance its strategic influence.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 15),
            const Text(
              'India-Malaysia Economic Relations: Opportunities Under the Act East Policy - Mr. Jaideep Singh',
            style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Times New Roman Regular',
            color: Colors.white,
  ),
),

            const SizedBox(height: 8),
            const Text(
              'Mr. Jaideep Singh analyzed the current state of India-Malaysia economic relations and proposed strategies to invigorate bilateral trade. He noted that while trade between the two countries has grown significantly, the relative importance of India in Malaysia’s trade profile has declined. Mr. Singh suggested updating the Malaysia-India Comprehensive Economic Cooperation Agreement (MICECA), enhancing cross-border investment frameworks, and strengthening collaboration in emerging sectors like semiconductors, pharmaceuticals, and digital services.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),

            const Text(
              'Q&A Session and Closing Remarks',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'The session concluded with an engaging discussion on the opportunities and challenges in India-ASEAN trade relations. Panelists emphasized the importance of addressing trade imbalances, promoting digital trade, and fostering people-to-people connectivity. Mr. Sivaraman underscored the need for greater cooperation in tourism, healthcare, and sustainable agriculture. The session highlighted the strategic importance of the Act East Policy in fostering economic synergies and building resilient partnerships between India and ASEAN.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular'),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 12),
            Image.asset('assets/images/conferences/intconf9.png'), // Screenshot 8
            const SizedBox(height: 15),


            const Text(
              'SESSION 4 - STUDENT PANEL',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'BUILDING RESILIENT COMMUNITIES: INDIA-ASEAN COOPERATION IN HUMAN SECURITY AND SOCIO-ECONOMIC DEVELOPMENT',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            const Text(
              'PANEL 1: HUMAN SECURITY',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
                        const SizedBox(height: 15),
            const Text(
              'Chair: Dr. Anmol Mukhia, Assistant Professor, Department of International Studies, Political Science and History, Christ University',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Dr Anmol Mukhia highlighted the importance of human security beyond national borders which should focus on protecting individuals from threats, poverty, and disasters. The goal must be to ensure that people are safeguarded from risks that hinder their development and well-being.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),

            const Text(
              'From Dreams to Dignity: An Approach to Human Security and Socio-Economic Fulfillment - Ms. Soja Johnson',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 8),
            const Text(
              'Ms Soja Johnson’s paper highlighted that historically the focus has been on national-level concerns such as GDP growth. However, there is a need for a shift towards an individual-centric approach. She emphasized the need for empowerment of marginalized communities and the practical applications of human security. Ms. Johnson highlighted several key areas for collaboration in the context of India-ASEAN cooperation ranging from economic inclusion of small businesses, disaster resilience and management, access to education and skill development, universal healthcare to improved connectivity.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),

            const Text(
              'Examining India’s Role in Addressing Crypto Scams and Human Trafficking in the Golden Triangle Since 2020 - Mr. Ashwin Dhanabalan & Ms. Vaishnavi Gangadhar',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'The case study presented by Mr. Ashwin Dhanabalan and Ms. Vaishnavi Gangadhar brought important areas into limelight such as India’s involvement in tackling crypto scams and human trafficking in the Golden Triangle Region (Myanmar, Laos, and Thailand). They highlighted the sensitivity of the region and the increasing illegal activities such as crypto scams, sex trafficking and drug trade. Mr. Dhanabalan and Ms. Gangadhar, through their case study explored how these activities are interconnected where crypto scams act as a catalyst for drug trade and other illegal practices in the region. They suggested that this cyclical nature of problems require an effort from all the countries involved. Nevertheless, India’s role is complicated because of its involvement with multiple nations with different priorities and governance systems. ',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 15),

            const Text(
              'Discussant - Ms. Greeshma HM',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Ms. Greeshma offered critical insights and meaningful feedback to the panelists. In her critique , Ms. Greeshma highlighted the strengths of the paper with a shift from national-level security policies to more individual-centric and community-based approaches. The shift aligned with the theoretical frameworks of Amartya Sen, which advocates for development as freedom. The discussant appreciated the paper for its focus on economic integration, disaster management, and bottom-up approach to empowerment. Her feedback to further strengthen the paper highlighted the need to focus on empowering communities to take active roles in disaster management and resilience building, balancing globalization with local empowerment, and promoting regional cooperation through community-based initiatives.''This panel discussion was followed by Q&A from the audience. Panel received feedback and suggestions to further strengthen and broaden the scope of their studies.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 12),
            Image.asset('assets/images/conferences/intconf10.png'), 
            const SizedBox(height: 15),

            const Text(
              'PANEL 2: SOCIO-ECONOMIC DEVELOPMENT',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            const Text(
              'Chair - Dr. Shreya Upadhyay, Assistant Professor, Department of International Studies, Political Science and History, Christ University',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'The panel discussion focusing on the theme of ‘Socio-Economic Development’ was chaired by Dr. Shreya Upadhyay. Dr. Upadhyay addressed how socio-economic development plays a crucial role in addressing the root causes of social issues in any society. By promoting economic growth, improving access to education and digital literacy, countries can strengthen their approach to deal with socio-economic vulnerabilities that make lives of individuals prone to exploitation.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),

            const Text(
              'A Decade of Act East Policy: Impact on India-ASEAN Relations and Regional Dynamics - Ms. Theja Shree Kannu Mohan ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Ms. Theja Mohan provided an overview on the decade of Act East Policy focusing on the impact on India-ASEAN relations and the regional dynamics. Her discussion focused on key themes of the policy ranging from objectives, key pillars of the policy and challenges faced by the stakeholders. Ms. Mohan addressed the evolution from India’s “Look East Policy” to “Act East Policy” which significantly re-shaped India’s relations with ASEAN nations and the broader Indo-Pacific region. AEP, over the past decade, played a crucial role in strengthening ties through various initiatives. Her paper analysed the impact of AEP on India-ASEAN relations and India’s evolving role in the region, highlighting challenges and opportunities. The presenter addressed key challenges in the Act East Policy that need reconsideration to further strengthen the relationship',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 15),
            const Text(
              'Towards a Resilient Indo-Pacific: The Role of India-ASEAN Economic Partnerships in Regional Stability - Ms. Avishka Ashok',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Ms. Avishka Ashoka highlighted the role of India-ASEAN economic partnerships in promoting regional stability by exploring key challenges and also suggested some policy recommendations. Ms. Ashok addressed the growing importance and the geopolitical competition for the region where economic partnership with ASEAN is at the centre to maintain stability, promote trade relations, and maintain peace and cooperation The paper addressed the geopolitical and changing economic dynamics in the Indo-Pacific region, especially with the growing influence of China through the ‘Belt and Road Initiative’ and the active promotion by the US of ‘Free and Open Indo-Pacific’; thus the geopolitical competition between China and US makes it essential for India to play a proactive role in the region.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 15),
            const Text(
              'Discussant - Ms. Diya Parthasarathy',
            style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Times New Roman Regular',
            color: Colors.white,
  ),
),

            const SizedBox(height: 8),
            const Text(
              'Ms. Diya provided critical insights and meaningful feedback to the presenters. The suggestions recommended include covering specific case studies of how AEP has directly impacted ASEAN countries. Ms. Diya emphasized that the analysis could be expanded with more detailed discussion keeping in view specific stakeholders. It could also give some details on how dynamics in the region impact the AEP effectiveness. Ms. Diya further suggested the paper could explore the role of smaller nations and their contribution and role in the region. It could also consider India-ASEAN partnership in combating climate change challenges. ',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 12),
            Image.asset('assets/images/conferences/intconf11.png'), 
            const SizedBox(height: 15),

                        const SizedBox(height: 8),
            const Text(
              'The panel discussion was followed by Q&A from the audience. Presenters received feedback and suggestions to strengthen and broaden the scope of their research.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 15),
            const Text(
              'Valedictory Address Reflections on India-ASEAN Partnership and the Act East Policy- Vice Admiral P. Murugesan',
            style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Times New Roman Regular',
            color: Colors.white,
  ),
),

            const SizedBox(height: 8),
            const Text(
              'Vice Admiral P. Murugesan delivered the valedictory address, emphasizing the deep-rooted historical and cultural ties between India and ASEAN nations. He highlighted the significance of the Act East Policy in strengthening these ties and fostering cooperation in various sectors. The Vice Admiral reiterated that national interests, sovereignty, and regional stability remain the cornerstone of India’s foreign policy. He discussed the shared security challenges faced by India and ASEAN countries, particularly in the maritime domain. The address underscored the importance of mutual trust, cooperation, and interdependence in building resilient partnerships. Vice Admiral Murugesan acknowledged the ongoing efforts to enhance India-ASEAN collaborations in trade, digital connectivity, and security infrastructure. In his closing remarks, Vice Admiral Murugesan urged all stakeholders to continue building on the progress made under the Act East Policy. He emphasized the need for sustained dialogue, capacity building, and strategic partnerships to overcome common challenges and realize shared aspirations for a prosperous and secure Indo-Pacific region. ',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 12),
            Image.asset('assets/images/conferences/intconf12.png'), 
            const SizedBox(height: 15),

            const Text(
              'Summary of Day’s Proceedings and Concluding Remarks - Ms. Avishka and Mr. Rituraj',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'The day’s proceedings were summarized by Avishka and Rituraj, highlighting key discussions across the four sessions including the inaugural session. They reflected on the comprehensive exploration of India-ASEAN partnerships under the Act East Policy, covering topics such as maritime security, economic synergies, technology, and digital transformation. The speakers acknowledged the valuable insights shared by panelists and the constructive engagement of participants throughout the day.'
              'The conference concluded with the Vote of Thanks proposed by Ms. Navya Syam from Chennai Centre for China Studies (C3S) and Ms. Komal Pooja from Centre for East Asian Studies (CEAS). The conference concluded with expressions of gratitude to Christ University and the Center for China Studies, Chennai, for organizing the conference and fostering a platform for meaningful dialogue on India-ASEAN relations. It was agreed to have the 3rd edition of the conference in the following year.',
              style: TextStyle(fontSize: 18, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 12),
            Image.asset('assets/images/conferences/intconf13.png'), 
            const SizedBox(height: 15),

            const SizedBox(height: 12),
            Image.asset('assets/images/conferences/intconf14.png'), 
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}