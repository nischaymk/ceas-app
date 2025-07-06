import 'package:flutter/material.dart';

// --- screens ---
import '../screens/home_screen.dart';
import '../screens/about/about_tab_page.dart';
import '../screens/activities/activities.dart';
import '../screens/six_pillars/six_pillars_landing.dart';
import '../screens/projects.dart';
import '../screens/research_publications/research_publications.dart';
import '../screens/internship.dart';
import '../screens/contact.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;
  const BottomNav({super.key, required this.currentIndex});

  void _navigate(BuildContext context, int index) {
    if (index == currentIndex) return;

    late final Widget page;
    switch (index) {
      case 0:
        page = const HomeScreen();
        break;
      case 1:
        page = const AboutTabPage();
        break;
      case 2:
        page = const ActivitiesPage();
        break;
      case 3:
        page = const SixPillarsLandingPage();
        break;
      case 4:
        page = const ProjectsPage();
        break;
      case 5:
        page = const ResearchPublicationsPage();
        break;
      case 6:
        page = const InternshipPage();
        break;
      case 7:
        page = const ContactPage();
        break;
      default:
        return;
    }

    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionDuration: const Duration(milliseconds: 300),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    );
  }

  Widget _item(BuildContext ctx, IconData icon, String label, int index) {
    final isSelected = index == currentIndex;
    final color = isSelected
        ? const Color.fromARGB(255, 220, 224, 5)
        : Colors.white;

    return GestureDetector(
      onTap: () => _navigate(ctx, index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 24, color: color),
          const SizedBox(height: 2),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10.5,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              color: color,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border(top: BorderSide(color: Colors.grey.shade800)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha((0.4 * 255).round()), // Updated from deprecated .withOpacity()
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 28,
        runSpacing: 12,
        children: [
          _item(context, Icons.home, 'Home', 0),
          _item(context, Icons.info_outline, 'About Us', 1),
          _item(context, Icons.event, 'Activities', 2),
          _item(context, Icons.account_balance, 'Six Pillars', 3),
          _item(context, Icons.folder_open, 'Projects', 4),
          _item(context, Icons.menu_book, 'Research', 5),
          _item(context, Icons.school, 'Internship', 6),
          _item(context, Icons.contact_mail, 'Contact', 7),
        ],
      ),
    );
  }
}
