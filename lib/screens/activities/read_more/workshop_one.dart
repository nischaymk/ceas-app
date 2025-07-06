import 'package:flutter/material.dart';

class WorkshopOnePage extends StatelessWidget {
  const WorkshopOnePage({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          '	Interactive session ',
          style: TextStyle(fontFamily: 'Montserrat',color: Colors.white,),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            const SizedBox(height: 20),
            Image.asset('assets/images/workshops/deepa1.JPG'), 
            const SizedBox(height: 20),

            const SizedBox(height: 20),
            const Text(
              'The interactive session organized by the Centre for East Asian Studies and the School of Social Sciences at Christ University with Dr. Deepa Ollapally was a deeply insightful exploration into the landscape of academic research, its evolving methodologies, and the role of Indian scholars in the global academic ecosystem. Opening remarks by Dr. Manoharan N and Dr. Jaishankar Reddy set the tone for a student-focused, research-driven dialogue that emphasized the shift from quantity to quality in scholarly output. Dr. Ollapally’s address offered practical and strategic guidance to PhD scholars, drawing on her rich experience as a professor, editor, and researcher in international affairs. She stressed the centrality of publication for academic progress and illuminated the competitive nature of publishing in top-tier journals, where strategic alignment with existing scholarship and theoretical engagement significantly influence visibility and acceptance. Her insights on the dominance of Western scholarship and the underrepresentation of Indian perspectives in global discourse were especially relevant, as she urged scholars to build credibility by contributing to and expanding upon established theoretical frameworks. Emphasizing theoretical grounding over mere originality, she pointed out that strong, well-structured research must go beyond regional description and engage global academic debates to achieve greater impact. She encouraged early-career researchers to frame their studies around compelling research puzzles and approach publishing with a deliberate focus on methodological discipline and thematic relevance.',
              style: TextStyle(fontSize: 16, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 20),
            Image.asset('assets/images/workshops/deepa2.JPG'), 
            const SizedBox(height: 20),

            const Text(
              '''A key highlight of the session was the focus on interdisciplinarity, wherein Dr. Ollapally advocated for blending disciplines like psychology, sociology, and history into political science and international relations to yield deeper insights. Yet, she cautioned researchers to remain mindful of disciplinary expectations when submitting to journals, recommending that interdisciplinary explorations be balanced with methodological rigor that aligns with one’s core field. Her discussion on the growing preference for quantitative methods in Western academia—while acknowledging the enduring value of qualitative approaches—underscored the importance of adopting mixed methodologies to validate findings and enhance academic credibility. Drawing from personal and institutional examples, she outlined the need to situate Indian research within comparative, functional frameworks rather than merely regional ones, particularly in areas like maritime security or digital governance. The Q&A session further enriched the dialogue, addressing challenges such as balancing academic and policy research, legitimizing indigenous knowledge systems like folklore, and selecting appropriate journals for publication. Practical strategies such as clear research questions, strong argumentative structure, theoretical engagement, and understanding journal orientation were emphasized to improve publication success. The session concluded with reaffirmation by Dr. Manoharan N on academia’s responsibility to address real-world issues, positioning research as a transformative force for society. The vote of thanks by Diya Parthasarathy encapsulated the session’s success, which left scholars better equipped to navigate the demands of academic publishing and more confident in their ability to contribute meaningfully to global scholarship. ''',
              style: TextStyle(fontSize: 16, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),


          ],
        ),
      ),
    );
  }
}

