import 'package:flutter/material.dart';

class ProfdeepaPage extends StatelessWidget {
  const ProfdeepaPage({super.key});

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
              'Navigating U.S.-India Strategic Partnership Under Global Crises',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Colors.teal,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              'The Centre for East Asian Studies at Christ (Deemed to be University), in collaboration with George Washington University, '
              'hosted a seminar on 22 February 2024 titled "Navigating U.S.-India Strategic Partnership Under Global Crises". The session '
              'featured Prof. Deepa Ollapally, Research Professor of International Affairs and Associate Director at the Sigur Center for East '
              'Asian Studies. Prof. Ollapally delivered an engaging talk focusing on the evolving dynamics of India-U.S. relations amid global '
              'challenges. She discussed her ongoing book project, *Great Powers in the Southeast Asian Region*, and highlighted how India’s '
              'strategic autonomy and its growing role in the Indo-Pacific region are shaping the partnership. Key areas of cooperation, such '
              'as information and intelligence sharing, defense technology, and naval expansion, were explored, alongside challenges like '
              'differing visions of a multipolar versus unipolar world order.',
              style: TextStyle(fontSize: 16, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            Image.asset('assets/images/lectures/deepa1.JPG'), // Ensure this image exists
            const SizedBox(height: 20),
            const Text(
              'The session provided participants with a nuanced understanding of the India-U.S. partnership, emphasizing the mutual benefits '
              'and strategic importance of the relationship for both nations. Prof. Ollapally delved into the broader geopolitical context, '
              'including the role of China and global crises in Ukraine and the Middle East, while addressing areas where Indian and U.S. '
              'interests align and diverge. The seminar concluded with a lively Q&A session, enriching the audience’s perspectives on policy '
              'measures and collaborative opportunities for the two countries in the future.',
              style: TextStyle(fontSize: 16, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            Image.asset('assets/images/lectures/deepa2.JPG'), // Ensure this image exists
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
