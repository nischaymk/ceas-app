import 'package:flutter/material.dart';

import 'about.dart';
import 'objectives.dart';
import 'advisory_committee.dart';
import 'meet_team.dart';
import '../../widgets/bottom_nav.dart';
import '../home_screen.dart';

class AboutTabPage extends StatelessWidget {
  const AboutTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
          title: const Text(
            'About Us',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          bottom: const TabBar(
            isScrollable: true,
            labelColor: Color.fromARGB(255, 243, 255, 22),
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            tabs: [
              Tab(text: 'About Us'),
              Tab(text: 'Objectives & Functions'),
              Tab(text: 'Advisory Committee'),
              Tab(text: 'Meet the Team'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            AboutPage(),
            ObjectivesFunctionsPage(),
            AdvisoryCommitteePage(),
            MeetTeamPage(),
          ],
        ),
        bottomNavigationBar: const BottomNav(currentIndex: 1),
      ),
    );
  }
}
