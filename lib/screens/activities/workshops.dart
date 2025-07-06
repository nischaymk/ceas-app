import 'package:flutter/material.dart';
import 'read_more/workshop_one.dart';
import 'read_more/workshop_two.dart';
import 'read_more/workshop_three.dart';

class WorkshopPage extends StatelessWidget {
  const WorkshopPage({super.key});

  Widget _buildWorkshopCard({
    required String imagePath,
    required String title,
    required VoidCallback onTap,
  }) {
    return Card(
      color: Colors.grey[900],
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                imagePath,
                height: 240,
                width: double.infinity,
                fit: BoxFit.contain,
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'Times New Roman Regular',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 237, 240, 9),
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Read More',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Times New Roman Regular',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Capacity Building Workshop',
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'The capacity-building workshops are aimed at enhancing the research and analytical capabilities of younger scholars. Conducted bi-annually in collaboration with various academic institutions within and outside India, the workshops are also planned to build expertise on East Asia.',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24),

            _buildWorkshopCard(
              imagePath: 'assets/images/workshops/deepa_beyond_boundaries.png',
              title: 'Capacity Building Workshop for Doctoral Scholars',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const WorkshopOnePage()));
              },
            ),
            _buildWorkshopCard(
              imagePath: 'assets/images/workshops/united_board.png',
              title: 'Capacity Building Workshop for Doctoral Scholars',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const WorkshopTwoPage()));
              },
            ),
            _buildWorkshopCard(
              imagePath: 'assets/images/workshops/venkat_iyer.png',
              title: 'Capacity Building Workshop for Doctoral Scholars',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const WorkshopThreePage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
