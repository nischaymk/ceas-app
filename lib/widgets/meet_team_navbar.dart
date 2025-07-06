import 'package:flutter/material.dart';
import '../screens/about/team/director.dart';
import '../screens/about/team/senior_affiliate.dart';
import '../screens/about/team/research_affiliate.dart';
import '../screens/about/team/junior_affiliate.dart';
import '../screens/about/team/former_affiliate.dart';

class MeetTeamNavbar extends StatelessWidget {
  const MeetTeamNavbar({super.key});

  Widget _navItem(BuildContext ctx, String label, Widget page) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: () => Navigator.push(ctx, MaterialPageRoute(builder: (_) => page)),
        child: Text(
          label,
          style: const TextStyle(
            fontFamily: 'EB Garamond',
            fontWeight: FontWeight.w500,
            fontSize: 17,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black, // Black background for the navbar
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _navItem(context, 'Director', const DirectorPage()),
                _navItem(context, 'Senior Affiliate', const SeniorAffiliatePage()),
                _navItem(context, 'Research Affiliate', const ResearchAffiliatePage()),
                _navItem(context, 'Junior Affiliate', const JuniorAffiliatePage()),
                _navItem(context, 'Former Affiliate', const FormerAffiliatePage()),
              ],
            ),
          ),
          const Divider(
            height: 1,
            thickness: 0.5,
            color: Colors.white24,
          ),
        ],
      ),
    );
  }
}
