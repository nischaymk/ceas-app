import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchURL(String url) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}

class EventReportsPage extends StatelessWidget {
  const EventReportsPage({super.key});

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontFamily: 'Times New Roman Regular',
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildLectureCard({
    required String imgPath,
    required String title,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: 3,
          color: Colors.grey[900],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 260,
                color: Colors.black,
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Times New Roman Regular',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Center(
                  child: ElevatedButton(
                    onPressed: onTap,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 229, 222, 3),
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                    ),
                    child: const Text('Read More'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Event Reports',
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildSectionTitle('Event Reports'),

            _buildLectureCard(
              imgPath: 'assets/images/eventreports/event1.png',
              title: 'How China Fights? -Military Strategies Through History',
              onTap: () => _launchURL('https://drive.google.com/file/d/1IfBblz4k5XXxWD1rn3H_Ev6f7aUFxhnY/view'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/eventreports/event2.png',
              title: 'Breaching The Glass Ceiling: China’s Emergence as a Global Player in Science, Technology and Innovation',
              onTap: () => _launchURL('https://drive.google.com/file/d/18d1WXKamqVC5UVHHqOT9sVgmxBcrrV5Q/view'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/eventreports/event3.png',
              title: 'South Asia and Indo-Pacific: The Way Forward',
              onTap: () => _launchURL('https://drive.google.com/file/d/1bdC5E5HkgdjXe-F18Aa6lYvkO6BngOcq/view'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/eventreports/event4.png',
              title: 'China’s Rise: Peaceful Transition or Inevitable Conflict?',
              onTap: () => _launchURL('https://drive.google.com/file/d/1wu0ULBjd2yowYMYn0B8Z2Xh1CPoHnsfo/view'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/eventreports/event5.png',
              title: 'Inception Day Lecture',
              onTap: () => _launchURL('https://drive.google.com/file/d/1tctg3yylH9EHa3myj-6JsBF8_ayWyQ8y/view'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/eventreports/event6.png',
              title: 'India-Japan Relations',
              onTap: () => _launchURL('https://drive.google.com/file/d/1vHytjnip7mseWx3VOH732KTVHwoKD2Y8/view'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/eventreports/event7.png',
              title: 'Australia-India Leadership Dialogue 2022',
              onTap: () => _launchURL('https://drive.google.com/file/d/1YBjwkcElyDvWM14jdX0fA3tacr3iiuL0/view'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/eventreports/event8.png',
              title: 'Building Trade Amidst Global Rivalry and Another Financial Crisis',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/distinguished-lecture-series-b/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/eventreports/event9.png',
              title: 'Capacity Building Workshop for Doctor Scholars',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/capacity-building-workshop/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/eventreports/event10.png',
              title: 'China Talk Series - Urban Transformation',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/chinatalkseriesurbantransforma/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/eventreports/event11.png',
              title: 'International Conference on ASEAN Centrality in the Indo-Pacific',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/asean-centrality-indo-pacific/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/eventreports/event12.png',
              title: 'Consortium of Academic Institutions and Think Tanks (CAITT)',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/think-tank-meeting/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/eventreports/event13.png',
              title: 'Unrest in Myanmar: Regional and Global Implications',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/inception-day-lecture-2/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/eventreports/event14.png',
              title: 'U.S.-India Strategic Partnership Under Global Crises',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/prof-deepa-visit/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/eventreports/event15.png',
              title: 'Inter-collegiate Debating Competition',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/debate-competition/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/eventreports/event16.png',
              title: 'Launch of the Indo-Pacific Curriculum',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/launch-of-the-indo-pacific-cur/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/eventreports/event17.png',
              title: 'Inception Day Lecture: Vice Admiral S.N. Ghormade',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/inception-day-lecture-3/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/eventreports/event18.png',
              title: 'Dr. Deepa Ollapaly on Research and Publication',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/interactivesessiondrdeepaollap/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/eventreports/event19.png',
              title: 'Panel Discussion on U.S. Elections and Transfer of Power',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/paneldiscussiononuselectionsan/home'),
            ),
            _buildLectureCard(
              imgPath: 'assets/images/eventreports/event20.png',
              title: 'A Decade of Act East Policy: Impact on India-ASEAN Relations',
              onTap: () => _launchURL('https://sites.google.com/christuniversity.in/internationalconferenceonadeca/home'),
            ),
          ],
        ),
      ),
    );
  }
}
