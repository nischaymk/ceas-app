import 'package:flutter/material.dart';

// Importing all the tab content widgets
import 'indo_pacific/home.dart';
import 'indo_pacific/higher_education.dart';
import 'indo_pacific/fellowships.dart';
import 'indo_pacific/exchanges.dart';
import 'indo_pacific/conferences.dart';
import 'indo_pacific/internships.dart';
import 'indo_pacific/fellowship_programs.dart';
import 'indo_pacific/financial_aid.dart';
import 'indo_pacific/university_fund.dart';
import 'indo_pacific/about.dart';

class IndoPacificPage extends StatelessWidget {
  const IndoPacificPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white), // Back button
          title: const Text(
            'Indo-Pacific',
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
            IndoHomePage(),
            IndoHigherEducationPage(),
            IndoFellowshipsPage(),
            IndoExchangesPage(),
            IndoConferencesPage(),
            IndoInternshipsPage(),
            IndoFellowshipProgramsPage(),
            IndoFinancialAidPage(),
            IndoUniversityFundPage(),
            IndoAboutUsPage(),
          ],
        ),
      ),
    );
  }
}
