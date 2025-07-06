import 'package:flutter/material.dart';
import 'south_east_asia/home.dart';
import 'south_east_asia/higher_education.dart';
import 'south_east_asia/fellowships.dart';
import 'south_east_asia/exchanges.dart';
import 'south_east_asia/conferences.dart';
import 'south_east_asia/internships.dart';
import 'south_east_asia/fellowship_programs.dart';
import 'south_east_asia/financial_aid.dart';
import 'south_east_asia/university_fund.dart';
import 'south_east_asia/about.dart';

class SouthEastAsiaPage extends StatelessWidget {
  const SouthEastAsiaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white), // Back button color
          title: const Text(
            'South East Asia',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Title color
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
            SouthEastAsiaHomePage(),
            SouthEastAsiaHigherEducationPage(),
            SouthEastAsiaFellowshipsPage(),
            SouthEastAsiaExchangesPage(),
            SouthEastAsiaConferencesPage(),
            SouthEastAsiaInternshipsPage(),
            SouthEastAsiaFellowshipProgramsPage(),
            SouthEastAsiaFinancialAidPage(),
            SouthEastAsiaUniversityFundPage(),
            SouthEastAsiaAboutPage(),
          ],
        ),
      ),
    );
  }
}
