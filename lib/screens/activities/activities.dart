import 'package:flutter/material.dart';
import 'lecture_series/lecture_series.dart';
import 'conferences.dart';
import 'workshops.dart';
import 'certificate_courses.dart';
import 'competitions/competitions.dart';
import '../../widgets/bottom_nav.dart';

class ActivitiesPage extends StatelessWidget {
  const ActivitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final activities = [
      {
        'title': 'Lecture Series',
        'widget': const LectureSeriesPage(),
        'image': 'assets/images/activities/lecture.png'
      },
      {
        'title': 'Conferences',
        'widget': const ConferencesPage(),
        'image': 'assets/images/activities/conference.png'
      },
      {
        'title': 'Capacity Building Workshop',
        'widget': const WorkshopPage(),
        'image': 'assets/images/activities/workshop.png'
      },
      {
        'title': 'Certificate Courses',
        'widget': const CertificateCoursesPage(),
        'image': 'assets/images/activities/certificate.png'
      },
      {
        'title': 'Competitions',
        'widget': const CompetitionsPage(),
        'image': 'assets/images/activities/competition.png'
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
          backgroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'Activities',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: activities.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => activities[index]['widget'] as Widget,
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(activities[index]['image'] as String),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4),
                      BlendMode.darken,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: ListTile(
                  title: Text(
                    activities[index]['title'] as String,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: const BottomNav(currentIndex: 2),
      ),
    );
  }
}
