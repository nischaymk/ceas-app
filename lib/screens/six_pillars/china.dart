import 'package:flutter/material.dart';
import 'china/home.dart';
import 'china/higher_education.dart';
import 'china/fellowships.dart';
import 'china/exchanges.dart';
import 'china/conferences.dart';
import 'china/internships.dart';
import 'china/fellowship_programs.dart';
import 'china/financial_aid.dart';
import 'china/university_fund.dart';
import 'china/about.dart';

class ChinaPage extends StatelessWidget {
  const ChinaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white), // back button color
          title: const Text(
            'China',
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
              Tab(text: 'Fellowships/scholarships'),
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
            ChinaHomePage(),
            ChinaHigherEducationPage(),
            ChinaFellowshipsPage(),
            ChinaExchangesPage(),
            ChinaConferencesPage(),
            ChinaInternshipsPage(),
            ChinaFellowshipProgramsPage(),
            ChinaFinancialAidPage(),
            ChinaUniversityFundPage(),
            ChinaAboutPage(),
          ],
        ),
      ),
    );
  }
}
