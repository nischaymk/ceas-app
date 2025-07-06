import 'package:flutter/material.dart';
import 'koreas/home.dart';
import 'koreas/higher_education.dart';
import 'koreas/fellowships.dart';
import 'koreas/exchanges.dart';
import 'koreas/conferences.dart';
import 'koreas/internships.dart';
import 'koreas/fellowship_programs.dart';
import 'koreas/financial_aid.dart';
import 'koreas/university_fund.dart';
import 'koreas/about.dart';

class KoreasPage extends StatelessWidget {
  const KoreasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white), // back button color
          title: const Text(
            'Koreas',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white, // title text color
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
            KoreasHomePage(),
            KoreasHigherEducationPage(),
            KoreasFellowshipsPage(),
            KoreasExchangesPage(),
            KoreasConferencesPage(),
            KoreasInternshipsPage(),
            KoreasFellowshipProgramsPage(),
            KoreasFinancialAidPage(),
            KoreasUniversityFundPage(),
            KoreasAboutPage(),
          ],
        ),
      ),
    );
  }
}
