import 'package:flutter/material.dart';
import 'working_papers.dart';
import 'perspectives.dart';
import 'event_reports.dart';
import '../../widgets/bottom_nav.dart';

class ResearchPublicationsPage extends StatelessWidget {
  const ResearchPublicationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final subPages = [
      {
        'title': 'Working Papers',
        'widget': const WorkingPapersPage(),
        'image': 'assets/images/publications/workingpaper.png',
      },
      {
        'title': 'Perspectives',
        'widget': const PerspectivesPage(),
        'image': 'assets/images/publications/perspective.png',
      },
      {
        'title': 'Event Reports',
        'widget': const EventReportsPage(),
        'image': 'assets/images/publications/eventreport.png',
      },
    ];

    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'Research and Publications',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: subPages.length,
          itemBuilder: (context, index) {
            final item = subPages[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => item['widget'] as Widget),
                );
              },
              child: Container(
                height: 160,
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(item['image'] as String),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5),
                      BlendMode.darken,
                    ),
                  ),
                ),
                alignment: Alignment.center,
                child: ListTile(
                  title: Text(
                    item['title'] as String,
                    style: const TextStyle(
                      fontFamily: 'Monntserrat',
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 6,
                          color: Colors.black,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: const BottomNav(currentIndex: 5),
      ),
    );
  }
}
