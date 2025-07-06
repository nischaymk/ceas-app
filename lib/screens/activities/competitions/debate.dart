import 'package:flutter/material.dart';

class DebatePage extends StatelessWidget {
  const DebatePage({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Debate Competition',
          style: TextStyle(fontFamily: 'Montserrat',color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            const Text(
              'The Inter-Collegiate Debate Competition on ‘India-U.S. Relations: The Way Ahead’ was organised by the U.S. Consulate General Chennai & Centre for East Asian Studies (CEAS) in collaboration with the International Relations and Foreign Policy Committee (IRFPC) of the School of Law, CHRIST (Deemed to be University), Bangalore & the Christ University Debating Society (CUDS) under the aegis of U.S.-India Cooperation Circle (USICC) on the 9th and 10th of September. Following a challenging competition among 107 written submissions that condensed to 20 contesting teams, the debate competition presented 2 teams in the Finals after three rounds of extensive debate.The 2 teams debated on the motion “This House believes that the outcome of the 2024 presidential elections in the United States will redefine the strategic partnership between the two countries” at the final round of debate. The judges of the final round were U.S. Political operatives Ms Alison Williams, Ms Dasheika Ruffin and U.S. Consulate’s Public Diplomacy Officer Mr Eric Atkins.Alison Williams is a strategic planning consultant for nonprofits and corporations.  Previously, Williams was the chief of staff to Asa Hutchinson, the former governor of Arkansas, where she managed the gubernatorial cabinet and staff, policy development and implementation, and external communications.  She also led the state’s first Women’s Commission in nearly 50 years and, through community engagement, provided recommendations to decrease barriers to entry for women in the state’s workforce.Dasheika Ruffin is a seasoned attorney, advocate, and political operative with over 20 years of experience who has been at the forefront of some of our nation’s most historic and consequential community-centric issue-based and electoral campaigns. Some of her dominion includes Obama for America, Hillary for America, Elizabeth Warren for President, Stacey Abrams for Governor, Doug Jones for Senate, Ayanna Pressley for Congress, Reverend Raphael Warnock for Senate, and most recently, her help secured the youngest member of the United States Congress with Maxwell Frost for Congress. Currently, she serves as the Global Head of Community Engagement and DEI Strategies for Google.Eric Atkins is a career Foreign Service Officer who joined the U.S. Department of State in 2008.  He most recently served as the Spokesperson for the Bureau of African Affairs.  Prior to that, he was the Spokesperson at U.S. Consulate General Istanbul, Turkey and the Public Affairs Officer in Windhoek, Namibia.  Earlier assignments included public diplomacy and consular work in Adana, Turkey; Antananarivo, Madagascar; and Amman, Jordan.  Before joining the Foreign Service, he earned a master’s degree in international education from the University of Minnesota and then taught English to rural Bedouins in the United Arab Emirates. .',
              style: TextStyle(fontSize: 16, fontFamily: 'Times New Roman Regular',color:Colors.white, ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            Image.asset('assets/images/debate/debate1.png'), 
            const SizedBox(height: 20),

            const Text(
              'The dignitaries inaugurated the Student Edition of the U.S.-India Cooperation Circle. Post the final round the dignitaries sat down to engage and interact with all participants and motivated students to answer questions and discuss the implications of the upcoming U.S. elections, foreign policy and relations between India and the U.S. The students demonstrated a vibrant contrast of stances, and the speakers clarified their viewpoints and elaborated on the implications of winning popular votes and electoral votes. The contrast between issues tormenting India and those plaguing the U.S. presented unique perspectives on finding solutions. The importance of continuing the good relations of India and the U.S. for the mutual growth of both nations was brought to light. Inspiring the students to engage in politics and consistently remain aware of global issues, the speakers concluded the discussion and awarded the winning team and runners-up.',
              style: TextStyle(fontSize: 16, fontFamily: 'Times New Roman Regular', color: Colors.white,),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            Image.asset('assets/images/debate/debate2.png'), 
            const SizedBox(height: 20),

            const SizedBox(height: 20),
            Image.asset('assets/images/debate/debate3.png'), 
            const SizedBox(height: 20),

            const Text(
              'The dignitaries inaugurated the Student Edition of the U.S.-India Cooperation Circle. Post the final round the dignitaries sat down to engage and interact with all participants and motivated students to answer questions and discuss the implications of the upcoming U.S. elections, foreign policy and relations between India and the U.S. The students demonstrated a vibrant contrast of stances, and the speakers clarified their viewpoints and elaborated on the implications of winning popular votes and electoral votes. The contrast between issues tormenting India and those plaguing the U.S. presented unique perspectives on finding solutions. The importance of continuing the good relations of India and the U.S. for the mutual growth of both nations was brought to light. Inspiring the students to engage in politics and consistently remain aware of global issues, the speakers concluded the discussion and awarded the winning team and runners-up.',
              style: TextStyle(fontSize: 16, fontFamily: 'Times New Roman Regular', color: Colors.white,),
              textAlign: TextAlign.justify,
            ),

          ],
        ),
      ),
    );
  }
}
