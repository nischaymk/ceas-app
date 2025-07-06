import 'package:flutter/material.dart';

class AdvisoryCommitteePage extends StatelessWidget {
  const AdvisoryCommitteePage({super.key});

  final List<Map<String, String>> members = const [
    {'name': 'Dr Madhumati Deshpande',         'image': 'assets/images/advisory/madhumati.png'},
    {'name': 'Dr Venkatanarayanan Sethuraman', 'image': 'assets/images/advisory/sethuraman.png'},
    {'name': 'Dr Guydeak Yeon',                'image': 'assets/images/advisory/yeon.png'},
    {'name': 'Dr MJ Vinod',                    'image': 'assets/images/advisory/vinod.png'},
    {'name': 'Dr Anurag Tripathi',             'image': 'assets/images/advisory/tripathi.png'},
    {'name': 'Dr Anmol Mukhia',                'image': 'assets/images/advisory/mukhia.png'},
    {'name': 'Dr Shreya Upadyay',              'image': 'assets/images/advisory/shreya.png'},
    {'name': 'Dr Shalini B.',                  'image': 'assets/images/advisory/shalini.png'},
    {'name': 'Dr Dharish David',               'image': 'assets/images/advisory/last.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.black,
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Advisory Committee',
              style: TextStyle(
                fontFamily: 'Times New Roman Regular',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                itemCount: members.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 24,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  final member = members[index];
                  return Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          member['image']!,
                          height: 140,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        member['name']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: 'Times New Roman Regular',
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
