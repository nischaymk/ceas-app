import 'package:flutter/material.dart';

class ObjectivesFunctionsPage extends StatelessWidget {
  const ObjectivesFunctionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Objectives & Functions',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Times New Roman Regular',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),

              Text(
                'Objectives',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Times New Roman Regular',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '• To advance research studies with a special focus on security, governance, diplomacy, connectivity, trade, history, culture, society, literature, diaspora, language and the like.\n\n'
                '• To enhance the level of student/scholar connect with various academic and other governmental, inter-governmental and non-governmental institutions of the region through exchanges and internships.\n\n'
                '• To offer region-specific courses at Undergraduate (open elective mode) and Masters levels.\n\n'
                '• To attract Doctoral and Post-Doctoral candidates for the Centre so that expertise in the region is enhanced and sustained in the long run.\n\n'
                '• To promote East Asian languages – especially Chinese, Japanese, and Korean – in order to boost the level of grounding in the region.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  fontFamily: 'Times New Roman Regular',
                  color: Colors.white,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 28),

              Text(
                'Functions',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Times New Roman Regular',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '• An open collaborative approach will be taken with like-minded organisations in the form of joint lectures, workshops, seminars, conferences and roundtable discussions.\n\n'
                '• To work on research projects aiming at providing research solutions for the East Asian region.\n\n'
                '• Provide UG-PG students with opportunities to learn, re-learn, and un-learn in a South Asian perspective through the CEAS platform.\n\n'
                '• Spearhead exchange programmes for students, research scholars, and faculty members. Participate in capacity-building of the teaching and scholarly community.\n\n'
                '• Promote inter-university academic programmes on a credit-sharing basis. Develop databases and share resource persons and academic materials among network institutions.\n\n'
                '• Organise interdisciplinary academic and cultural events in collaboration with other like-minded institutions. Institute fellowships for students and doctoral scholars working on East Asia.\n\n'
                '• Monitor and evaluate current developments in the East Asian region periodically.\n\n'
                '• Publish well-researched content such as journal articles, books, opinion pieces, research papers, and edited volumes on key issues of the region.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  fontFamily: 'Times New Roman Regular',
                  color: Colors.white,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
