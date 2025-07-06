import 'package:flutter/material.dart';
import 'debate.dart';
import 'essay.dart';

class CompetitionsPage extends StatelessWidget {
  const CompetitionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final competitions = [
      {
        'title': 'Debate Competition',
        'widget': const DebatePage(),
        'image': 'assets/images/debate/debate1.png',
      },
      {
        'title': 'Essay Competition',
        'widget': const EssayPage(),
        'image': 'assets/images/debate/debate4.png',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Competitions',
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: competitions.length,
        itemBuilder: (context, index) {
          final item = competitions[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => item['widget'] as Widget),
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              height: 140,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(item['image'] as String),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.45),
                    BlendMode.darken,
                  ),
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(20),
                title: Text(
                  item['title'] as String,
                  style: const TextStyle(
                    fontFamily: 'Times New Roman Regular',
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward, color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
