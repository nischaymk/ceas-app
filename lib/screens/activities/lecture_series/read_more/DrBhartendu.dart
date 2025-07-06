import 'package:flutter/material.dart';

class DrBhartenduPage extends StatelessWidget {
  const DrBhartenduPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark background
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Dr. Dharish David Lecture',
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.white,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Border Clashes between India and China: Geo-political and Theoretical Perspectives',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'The Centre for East Asian Studies, Department of ISPH, conducted its inception day lecture for the year 2023-24 on the topic "Border Clashes between India and China: Geopolitical and Theoretical Perspectives". The guest Speaker for the day was Dr. Bhartendu Kumar Singh, Joint Controller General of the Defense Accounts, Office of CGDA. It was an on-offline event, with the speaker connected over Webex.\n\n'
              'He introduced the issue of border clashes between India and China, and the McMahon Line\'s inception, which gave way to the issues present today between the two countries. He explained how the problem was aggravated by the Chinese annexation of Tibet, and the differing opinions between the Chinese, Tibetians and Indians. Being subsumed under the rubric of the Line of Actual Control, he further explained how the conflict over the McMahon Line/LAC and the failure to define it properly have led to increasing border clashes between the two territories. Beginning from the 1950s, he traced the conflicts and incursions that occurred between the two countries over the disputed borders. He divided the border into three distinct sectors: the Western sector, which consists of Aksai Chin; the Central Sector, consisting of marginal pieces of land bordering Himachal Pradesh and Uttarakhand; and the Eastern Sector of the McMahon line, which borders Sikkim and Arunachal Pradesh. The 1963 resolution by the Indian government to \'take back lost land\' from China is now only a symbolic paper, and has no effect on reality.\n\n'
              'He then moved on to talk about the various perspectives existing about border clashes, along with the official stand of both countries. India\'s official as well as informal stance on the border issue is that of projecting their differing perceptions of LAC, while China follows the same from their side. He then brought in various perspectives such as Great Power perspective (as India and China are great powers to an extent and neighbours, their relationship is bound to be conflictual), Military Power Perspective (the view that China induces the conflict to show off its military prowess), and Infrastructural game perspective (both countries building infrastructure adjacent to the LAC territory in order to secure it better).\n\n'
              'He then began to explain the border clashes between China and India from the prism of history, beginning from the 1959 clash in Longju, Aksai Chin, the 1986 Sumdurong Chu standoff, and the following 1993 Agreement on Maintenance of Peace and Tranquility along the LAC signed between the Indian Prime Minister Narasimha Rao and his Chinese counterpart Li Peng. A potential for solving the border issues came with the 2005 Agreement on the Political Parameters and Guiding Principles for the Settlement of the India-China Boundary Question, a direct result of the Special Representative (SR) Mechanism established in 2003.\n\n'
              'He shifted to the more recent clashes of Galwan and Tawang, and explored them individually. For the 2020 Galwan clash, he focused on why it was a departure in military relations. The Galwan clash marked the first time of massive casualties between two sides, and changed the prevalent idea that LAC was a peaceful border with only verbal conversations, and that of China being a satisfied party in the border dispute. It showed the three theaters of possible war, and also changed the idea that China and India are unlikely to go to war. As India\'s coalitions with powers like the UK, US and Russia also remained neutral, it became a fight that India had to fight on its own. Moving to the 2022 Tawang clashes, it showed that the entire arc of LAC matters to China, and not just any particular sectors. It also emphasized that border clashes are here to stay and only increase in frequency and intensity, which requires the Indian government to develop a response mechanism. Using its deceptive military strategy, the Chinese army may also look for more "hot spots" to attack and claim borderlands.\n\n'
              'He also focused on the aspects of the status of bilateral relations between India and China, noting that it has been the lowest since 1962, and also noted India’s openness to attempts of balancing relations and coalition building exercises. Speaking on the future of bilateral relations, he spoke on the possibility that China\'s and India\'s recent military trends might result in war probabilities, and the possible results of it. Concluding the lecture, he said that the question of war looms over India and China, especially with the military confidence vis a vis China.',
              style: TextStyle(
                fontSize: 17,
                height: 1.5,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
