import 'package:flutter/material.dart';
import 'team/director.dart';
import 'team/senior_affiliate.dart';
import 'team/research_affiliate.dart';
import 'team/junior_affiliate.dart';
import 'team/former_affiliate.dart';

class MeetTeamPage extends StatelessWidget {
  const MeetTeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: true,
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'Meet the Team',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            tabs: [
              Tab(text: 'Director'),
              Tab(text: 'Senior Research Affiliates'),
              Tab(text: 'Research Affiliates'),
              Tab(text: 'Junior Research Affiliates'),
              Tab(text: 'Former Research Affiliates'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            DirectorPage(),
            SeniorAffiliatePage(),
            ResearchAffiliatePage(),
            JuniorAffiliatePage(),
            FormerAffiliatePage(),
          ],
        ),
      ),
    );
  }
}
