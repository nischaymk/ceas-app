import 'package:flutter/material.dart';
import 'japan/home.dart';
import 'japan/higher_education.dart';
import 'japan/fellowships.dart';
import 'japan/exchanges.dart';
import 'japan/conferences.dart';
import 'japan/internships.dart';
import 'japan/fellowship_programs.dart';
import 'japan/financial_aid.dart';
import 'japan/university_fund.dart';
import 'japan/about.dart';

class JapanPage extends StatelessWidget {
  const JapanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white), // back button color
          title: const Text(
            'Japan',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white, // title color
            ),
          ),
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            labelStyle: TextStyle(
              fontFamily: 'Times New Roman Regular',
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            tabs: [
              Tab(text: 'Home'),
              Tab(text: 'Higher Education'),
              Tab(text: 'Fellowships'),
              Tab(text: 'Exchanges'),
              Tab(text: 'Conferences'),
              Tab(text: 'Internships'),
              Tab(text: 'Fellowship Programs'),
              Tab(text: 'Financial Aid'),
              Tab(text: 'University Fund'),
              Tab(text: 'About Us'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            JapanHomePage(),
            JapanHigherEducationPage(),
            JapanFellowshipsPage(),
            JapanExchangesPage(),
            JapanConferencesPage(),
            JapanInternshipsPage(),
            JapanFellowshipProgramsPage(),
            JapanFinancialAidPage(),
            JapanUniversityFundPage(),
            JapanAboutUsPage(),
          ],
        ),
      ),
    );
  }
}
