import 'package:flutter/material.dart';

class ConferencefourPage extends StatelessWidget {
  const ConferencefourPage({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          '	ASEAN Centrality in the Indo-Pacific',
          style: TextStyle(fontFamily: 'Montserrat',color: Colors.white,),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            const Text(
              'The Centre for East Asian Studies (CEAS), in collaboration with the Chennai Centre for China Studies (C3S), hosted a one-day international conference on December 18, 2023, titled "ASEAN Centrality in the Indo-Pacific: Prospects and Challenges for Security, Peace, and Prosperity.The inaugural session featured distinguished speakers, including Commodore Vasan, Dr. T.C.A. Raghavan, and Fr. Jose CC, who emphasized ASEANs pivotal role in regional security, peace, and connectivity, as well as India’s historical and strategic ties with the region. The session also marked the launch of CEAS mobile and desktop application, aimed at fostering academic opportunities in East Asian studies.',
              style: TextStyle(fontSize: 16, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            Image.asset('assets/images/conferences/asean1.JPG'), 
            const SizedBox(height: 20),
            const Text(
              '''The first session, "Drawing Inferences to ASEAN in the Evolving Security Landscape in the Indo-Pacific," provided a nuanced exploration of ASEAN's economic and security challenges amidst the region's dynamic geopolitical landscape. Captain (Dr.) Gurpreet Singh Khurana outlined the Indo-Pacific framework as a tool to assess China's maritime strategies and geo-economic influence, prompting reflections on ASEAN’s sovereignty and India's Act-East policy. Dr. Dharish David highlighted ASEAN's economic dynamics, focusing on China’s significant role in trade and infrastructure while contrasting it with Japan and the U.S.'s dominance in finance. Rear Admiral Rommel Jude G. Ong analyzed China's regional strategies, emphasizing the dual-purpose Belt and Road Initiative (BRI) and the Nine-Dash Line as tools to assert dominance in the South China Sea, while proposing counterstrategies like India's BrahMos missile system and deeper cooperation with the Philippines.'''
              '''Ms. Nguyen Hoang Anh Thu addressed the environmental and food security threats posed by China's maritime militia, calling for legally binding mechanisms to conserve marine resources and ensure regional sustainability. Ms. Jeslyn Tan examined China's submarine patrols and U.S. Freedom of Navigation Operations (FONOP), underscoring their impact on ASEAN’s sovereignty. The session concluded with a lively Q&A segment, where discussions centered on the effectiveness of the Tripartite Coastguard Agreement, challenges with BrahMos implementation, and prospects for multilateral cooperation to balance China's assertive strategies, offering practical insights for ASEAN’s path forward in the Indo-Pacific.''',
              style: TextStyle(fontSize: 16, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 20),
            Image.asset('assets/images/conferences/asean2.JPG'),
            const SizedBox(height: 40),
            const SizedBox(height: 20),
            Image.asset('assets/images/conferences/asean3.JPG'),
            const SizedBox(height: 40),


            const Text(
              '''The second session, themed "Indo-ASEAN Strategic Connection," explored the deepening ties between India and ASEAN nations, with a focus on Vietnam and Indonesia. Dr. Ngyuen Thi Lan Huong emphasized the enduring bilateral relationship between Vietnam and India, tracing its evolution from diplomatic ties in 1972 to a comprehensive strategic partnership by 2016. She highlighted key areas of cooperation, including defense-security collaboration, economic trade, and maritime cooperation, underscoring Vietnam’s significance in India's Act East policy. Notable achievements, such as India's defense line of credit and agreements on maritime security, were discussed, with recommendations for future collaborations in maritime domain awareness and submarine cable security under frameworks like the Quad. Complementing this, Captain Gurpreet Singh Khurana analyzed the maritime dynamics between India and Indonesia, emphasizing shared strategic interests, including countering China’s influence, geostrategic expansion, and enhancing regional connectivity. His insights on the Andaman-Nicobar Islands' proximity and policies like India's SAGAR program highlighted the potential for robust maritime cooperation.'''
              '''The session also featured a student panel discussion, where scholars delved into the challenges and opportunities in India-ASEAN partnerships. Ms. Sayani Rana explored the collaborative efforts in climate change, disaster management, and biodiversity conservation, emphasizing initiatives like the Green Fund and India's International Solar Alliance. Ms. Patricia Cheriyan highlighted sustainable strategies to combat climate change, proposing CO2 capture technologies and renewable energy solutions in ASEAN countries. The second panel session, led by Ms. Ayushi Attiri and Mr. Sarthak Ahuja, examined the economic dimension of India-ASEAN relations. Ms. Ayushi outlined the evolution of economic cooperation, citing agreements like the ASEAN-India Free Trade Area and advocating for enhanced trade connectivity and digital collaboration. Mr. Sarthak projected future opportunities, particularly in defense trade, regional connectivity through initiatives like the India-Myanmar-Thailand trilateral highway, and the burgeoning digital economy, positioning ASEAN and India as key players in the region’s growth narrative.''',
              style: TextStyle(fontSize: 16, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 20),
            Image.asset('assets/images/conferences/asean4.JPG'),
            const SizedBox(height: 40),
            const SizedBox(height: 20),
            Image.asset('assets/images/conferences/asean5.JPG'),
            const SizedBox(height: 40),



          ],
        ),
      ),
    );
  }
}
