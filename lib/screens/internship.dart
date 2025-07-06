import 'package:flutter/material.dart';
import '../widgets/bottom_nav.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animate_do/animate_do.dart';

class InternshipPage extends StatelessWidget {
  const InternshipPage({super.key});

  Future<void> _launchEmail(String email) async {
    final Uri emailLaunchUri = Uri(scheme: 'mailto', path: email);
    await launchUrl(emailLaunchUri);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'Internship Programme',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
              color: Colors.white,
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
            color: Colors.black,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInDown(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey[850],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        'Welcome to the CEAS Internship Programme!\nGrow. Learn. Contribute.',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Times New Roman Regular',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'About the CEAS Internship Programme',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman Regular',
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'The CEAS Internship Programme is highly competitive, particularly beneficial to students and younger researchers from diverse backgrounds. Interns will get an opportunity to develop various skill sets during the programme. They will be mentored by senior scholars and paired with other interns for collaborative research. A certificate will be provided on satisfactory completion of the internship.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Times New Roman Regular',
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[850],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      '"Center for East Asian Studies provided me with constant guidance and support throughout my internship. Proud to be part of this team."',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 16,
                        fontFamily: 'Times New Roman Regular',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Roles and Responsibilities',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman Regular',
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 12),
                  _buildRole('Research and Publications', [
                    'Conceptualizing research ideas',
                    'Conducting academic research',
                    'Writing and publishing papers'
                  ]),
                  _buildRole('Social Media & Website Management', [
                    'Updating and managing website',
                    'Creating content for outreach'
                  ]),
                  _buildRole('Administration', [
                    'Mentoring new interns',
                    'Tracking ongoing activities'
                  ]),
                  _buildRole('Events', [
                    'Organizing academic events',
                    'Coordinating logistics'
                  ]),
                  _buildRole('Logistics Support', [
                    'Assisting in event/project logistics'
                  ]),
                  _buildRole('Projects', [
                    'Writing proposals and reports',
                    'Managing deliverables'
                  ]),
                  const SizedBox(height: 24),
                  const Text(
                    'What Our Interns Say',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman Regular',
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 12),
                  _buildTestimonialWithImage('Josna Shibu Nalhew',
                      '"My internship at CEAS has been a great learning experience. I gained insights into conducting organized research and structuring my writing effectively."',
                      'assets/images/interns/josna.png', screenWidth),
                  _buildTestimonialWithImage('Vishesh Sharma',
                      '"The seminars helped me gain deeper insight into geopolitics."',
                      'assets/images/interns/vishesh.png', screenWidth),
                  _buildTestimonialWithImage(
                      'Parvathy KG',
                      '"Mentorship helped me polish skills in research and writing."',
                      'assets/images/interns/parvathy.png',
                      screenWidth,
                      'Junior Research Affiliate, Jan 2023 - Jan 2024'),
                  _buildTestimonialWithImage(
                      'Rose Paul',
                      '"The centre broadened my horizons and helped me identify my interests and strengths."',
                      'assets/images/interns/rose.png',
                      screenWidth,
                      'Research Affiliate, June 2022 - July 2022'),
                  _buildTestimonialWithImage(
                      'Sejal Sharma',
                      '"The team aided and guided my academic curiosities with a kindred spirit."',
                      'assets/images/interns/sejal.png',
                      screenWidth,
                      'Research Affiliate, Jan 2023 - Sep 2023'),
                  _buildTestimonialWithImage(
                      'Praveen Krishna',
                      '"The research project experience was invaluable in shaping my understanding of international trade."',
                      'assets/images/interns/praveen.png',
                      screenWidth,
                      'Research Affiliate, May 2023 - July 2024'),
                  _buildTestimonialWithImage(
                      'Shrestha Medhi',
                      '"The mentorship was incredibly supportive and helped make my research relevant and functional."',
                      'assets/images/interns/shreshta.png',
                      screenWidth,
                      'Research Affiliate, June 2023 - June 2024'),
                  _buildTestimonialWithImage(
                      'Goutham Sankar',
                      '"Insightful seminars and expert guidance helped me gain a deeper understanding of the region."',
                      'assets/images/interns/goutham.png',
                      screenWidth,
                      'Junior Research Affiliate, Sep 2022 - July 2023'),
                  const SizedBox(height: 24),
                  const Text(
                    'Internship Details',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman Regular',
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 12),
                  _buildDetail('Eligibility Criteria',
                      'Open to students pursuing Undergraduate, Master\'s, or PhD programs. Selection is merit-based with priority to passionate learners.'),
                  _buildDetail('Duration',
                      'Flexible duration with a minimum of one month.'),
                  _buildDetail('How to Apply',
                      'Send an email expressing interest to contact.ceas@christuniversity.in with the required documents. Shortlisted candidates will be invited for an interview.'),
                  _buildDetail('Required Documents',
                      'CV, Two letters of recommendation, Original writing sample (~2000 words), Statement of Purpose'),
                  const SizedBox(height: 16),
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () => _launchEmail('contact.ceas@christuniversity.in'),
                      icon: const Icon(Icons.mail),
                      label: const Text('Apply Now'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber.shade600,
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        textStyle: const TextStyle(
                          fontFamily: 'Times New Roman Regular',
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: const BottomNav(currentIndex: 6),
      ),
    );
  }

  Widget _buildRole(String title, List<String> tasks) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Card(
        color: Colors.grey[900],
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.work_outline, color: Colors.white),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Times New Roman Regular',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              ...tasks.map(
                (task) => Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.arrow_right, size: 20, color: Colors.white70),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          task,
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Times New Roman Regular',
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTestimonialWithImage(String name, String quote, String imagePath, double screenWidth, [String? position]) {
    return FadeInUp(
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[850],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipOval(
              child: Image.asset(
                imagePath,
                width: screenWidth * 0.15,
                height: screenWidth * 0.15,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    quote,
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                      fontFamily: 'Times New Roman Regular',
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: 'Times New Roman Regular',
                      color: Colors.white,
                    ),
                  ),
                  if (position != null)
                    Text(
                      position,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Times New Roman Regular',
                        color: Colors.amber.shade400,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetail(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade700),
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.info_outline, size: 20, color: Colors.white),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman Regular',
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              content,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white70,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
