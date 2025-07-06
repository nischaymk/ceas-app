import 'package:flutter/material.dart';
import 'northeast_india/home.dart';
import 'northeast_india/higher_education.dart';
import 'northeast_india/fellowships.dart';
import 'northeast_india/exchanges.dart';
import 'northeast_india/conferences.dart';
import 'northeast_india/internships.dart';
import 'northeast_india/fellowship_programs.dart';
import 'northeast_india/financial_aid.dart';
import 'northeast_india/university_fund.dart';
import 'northeast_india/about.dart';

class NorthEastIndiaPage extends StatelessWidget {
  const NorthEastIndiaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white), // Back button color
          title: const Text(
            'North East India',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Title text color
            ),
          ),
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.white, // Active tab underline
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
            NorthEastIndiaHomePage(),
            NorthEastIndiaHigherEducationPage(),
            NorthEastIndiaFellowshipsPage(),
            NorthEastIndiaExchangesPage(),
            NorthEastIndiaConferencesPage(),
            NorthEastIndiaInternshipsPage(),
            NorthEastIndiaFellowshipProgramsPage(),
            NorthEastIndiaFinancialAidPage(),
            NorthEastIndiaUniversityFundPage(),
            NorthEastIndiaAboutPage(),
          ],
        ),
      ),
    );
  }
}
