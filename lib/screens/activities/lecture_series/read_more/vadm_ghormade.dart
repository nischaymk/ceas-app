import 'package:flutter/material.dart';

class VadmghormadePage extends StatelessWidget {
  const VadmghormadePage({super.key});

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Inception Day Lecture – Maritime Power and Partnerships: Role of Indian Navy',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // 🔹 Image before first paragraph
            Image.asset('assets/images/lectures/admiral1.JPG'),
            const SizedBox(height: 20),

            const Text(
              'The Centre for East Asian Studies, CHRIST (Deemed to be University), hosted its 3rd Inception Day event on 9 January, 2025. '
              'The lecture on ‘Maritime Power and Partnerships: Role of Indian Navy’ was delivered by Vice Admiral S.N. Ghormade, PVSM, AVSM, NM, '
              'Former Vice Chief of Naval Staff, Indian Navy. The lecture provided the audience various crucial insights into the Indian Navy’s pivotal role '
              'in ensuring maritime security and cultivating partnerships with other nations. He discussed the Navy as the primary instrument for maritime security and '
              'its effort towards protection, disaster management, and humanitarian aid. The importance and safeguarding of the Indian Ocean was highlighted throughout the lecture.',
              style: TextStyle(fontSize: 16, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),

            const Text(
              'India as a Maritime Nation\n\n'
              'Vice Admiral Ghormade began the event by showing the audience an introductory video that captured the essence, power, and reach of the Indian Navy. On that motivating note, '
              'he began the lecture by tracing the roots of the Indian Navy to the subcontinent’s ancient civilisations and the Rigveda. The seafaring nature of the Indian civilisation is evidenced by artifacts '
              'and motifs depicting seafaring activities from the Harappan civilisation and across 10th century BCE, and the ship might of the Marathas kept foreign conquerors at bay for decades. '
              'It was interesting to learn that Mudra in the Naval Ensign is also derived from ancient traces, depicting the Indian Navy’s duty and capacity to protect from all dimensions.\n\n'
              'The Admiral discussed how India’s naval assets have grown since the Independence from comparison 3% to 19.7% of the budget. The Navy has improved in its scope and involvement immensely, underscored by its '
              'efficient maritime operations over the decades. The Navy’s objectives extend beyond defense, encompassing nation-building. Not only does the Navy provide maritime security, but it plays a significant role in '
              'international relations as well. The lecture highlighted the Indian Navy’s primary roles to be military, diplomatic, constabulary, and humanitarian. The Admiral also highlighted the Navy’s goal towards Atmanirbhata '
              'with its shipbuilding efforts and progress since 1947. He pointed out that the Navy’s existing submarines are already 90% indigenous, with ongoing and future assets aiming for 95%.',
              style: TextStyle(fontSize: 16, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),

            const Text(
              'Maritime Partnerships and Security Challenges\n\n'
              'The lecture shed light on how India actively engages in maritime diplomacy to foster regional security. The Navy trains over a thousand international personnel annually, assists in hydrography for countries like Mauritius, '
              'Maldives, and Sri Lanka, and conducts coordinated patrols (CORPATs) with neighboring nations. India’s collaborative exercises, partnerships through the Indian Ocean Naval Symposium (IONS), and the Information Fusion Centre-Indian Ocean Region (IF-IOR) '
              'stand vital for maritime cooperation. Numerous humanitarian missions, such as responding to the Red Sea crisis and major anti-piracy operations and initiatives, highlight the Navy’s efficiency and essence.\n\n'
              'The Admiral presented various maritime security challenges that arise, especially in the Indo-Pacific Region. From a global outlook through examples of ongoing conflicts in the world, he pointed out that since armies at land borders are constantly at war, '
              'the vast maritime area is used as points of infiltration. For India, China’s rapid expansion of its naval assets and monitoring activities in the Indian Ocean pose significant challenges. The Indian Navy closely monitors Chinese ships and submarines to safeguard national interests. '
              'Pakistan remains a traditional threat, with piracy and other maritime incidents being persistent threats to trade and security.',
              style: TextStyle(fontSize: 16, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 20),

            // 🔹 Two images before the final paragraph
            Image.asset('assets/images/lectures/admiral2.jpg'),
            const SizedBox(height: 16),
            Image.asset('assets/images/lectures/admiral3.jpg'),
            const SizedBox(height: 20),

            const Text(
              'The lecture came to a conclusion with the Admiral showing the Navy’s adventurous achievements in circumnavigation. It ended on an inspiring note with a video on the Indian Navy’s myriad of recent accomplishments in safeguarding national and international interest. '
              'The audience learned the significance of a blue economy with the future lying in the oceans.',
              style: TextStyle(fontSize: 16, fontFamily: 'Times New Roman Regular',color: Colors.white),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
