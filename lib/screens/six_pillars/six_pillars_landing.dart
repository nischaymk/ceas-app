import 'package:flutter/material.dart';
import 'china.dart';
import 'koreas.dart';
import 'japan.dart';
import 'south_east_asia.dart';
import 'indo_pacific.dart';
import 'northeast_india.dart';
import '../../widgets/bottom_nav.dart';

class SixPillarsLandingPage extends StatelessWidget {
  const SixPillarsLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pillars = [
      {
        'name': 'China',
        'page': const ChinaPage(),
        'image': 'assets/images/pillars/china.png',
      },
      {
        'name': 'Koreas',
        'page': const KoreasPage(),
        'image': 'assets/images/pillars/korea.png',
      },
      {
        'name': 'Japan',
        'page': const JapanPage(),
        'image': 'assets/images/pillars/japan.png',
      },
      {
        'name': 'South East Asia',
        'page': const SouthEastAsiaPage(),
        'image': 'assets/images/pillars/southeast.png',
      },
      {
        'name': 'Indo-Pacific',
        'page': const IndoPacificPage(),
        'image': 'assets/images/pillars/indopacific.png',
      },
      {
        'name': 'North East India',
        'page': const NorthEastIndiaPage(),
        'image': 'assets/images/pillars/northeast.png',
      },
    ];

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (!didPop) {
          Navigator.pop(context);
        }
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'Six Pillars',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: pillars.length,
          itemBuilder: (context, index) {
            final pillar = pillars[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => pillar['page'] as Widget),
                );
              },
              child: Container(
                height: 160,
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(pillar['image'] as String),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withAlpha((0.5 * 255).round()), // updated from .withOpacity()
                      BlendMode.darken,
                    ),
                  ),
                ),
                alignment: Alignment.center,
                child: ListTile(
                  title: Text(
                    pillar['name'] as String,
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 6,
                          color: Colors.black,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: const BottomNav(currentIndex: 3),
      ),
    );
  }
}
