import 'package:flutter/material.dart';

class PrataphebbarPage extends StatelessWidget {
  const PrataphebbarPage({super.key});

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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Unrest in Myanmar: Regional and Global Implications',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'The Centre for East Asian Studies (CEAS) hosted a lecture delivered by Mr. PM Heblikar. The presentation focused on the subject of "Unrest in Myanmar: Regional and Global Implications." The presentation analysed the situation in Myanmar, including the factors that caused the current turmoil, the potential consequences of disturbance in Myanmar on both regional and global levels, and the significant roles played by India and China in this context.\n\n'
              'Mr. Heblikar examined the criteria for evaluating the interconnections between nations and emphasised the paramount significance of national security for a country. The individual commenced by discussing the country profile of Myanmar and emphasised how Myanmar’s geopolitical location renders it of greater significance to its neighbouring nations. The speaker elaborated on the various ethnic and religious factions present in Myanmar and their impact on the country\'s politics and foreign policy.\n\n'
              'The speaker discussed the key points of the 2020 election in Myanmar and how it changed the regime in Myanmar. He mentioned his experience working in Myanmar and shared his thoughts on the current situation there. The speaker further discussed Aung Sun Suu Kyi and her journey to become State Counsellor of Myanmar. He further talked about the military regime and its power in the Myanmar parliament, yet they never won the election even once; the National League of Democracy, Aung San Suu Kyi’s party, always gained the majority in all the elections.\n\n'
              'The speaker elucidated the underlying factors that precipitated the military coup in 2021, as well as the nationwide response of the citizenry against the ensuing military governance. The speaker analysed India and China’s respective positions about the military coup and examined its impact on both nations. He elaborated on the concerns of the Rohingya population in Myanmar.\n\n'
              'The speaker further addressed the relationship of India and China with Myanmar and how important it is for India to counter the rise of Chinese influence in Myanmar. He further talked about China, its current running projects worldwide, and how they come with many strings attached. He emphasized the role of India in balancing and reversing the rise of Chinese power and intervention. He also mentioned how important Myanmar is to India and what steps India is taking to address the issues in Myanmar and at the border with Myanmar.\n\n'
              'Toward the end, Mr. Heblikar discussed the regional and global implications. He mentioned the Western country leaders’ visit to Myanmar and how there are no allies of Myanmar except India and China.',
              style: TextStyle(
                fontSize: 17,
                height: 1.5,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24),
            Image.asset('assets/images/lectures/myanmar1.JPG'),
            const SizedBox(height: 12),
            Image.asset('assets/images/lectures/myanmar2.JPG'),
            const SizedBox(height: 12),
            Image.asset('assets/images/lectures/myanmar3.JPG'),
          ],
        ),
      ),
    );
  }
}
