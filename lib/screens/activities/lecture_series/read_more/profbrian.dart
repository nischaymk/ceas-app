import 'package:flutter/material.dart';

class profbrianPage extends StatelessWidget {
  const profbrianPage({super.key});

  @override
  Widget build(BuildContext context) {
       return Scaffold(
      backgroundColor: Colors.black, // Dark background
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Dr. Dharish David Lecture',
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
          children: const [
            Text(
              'Building Trade Amidst Global Rivalry and Another Financial Crisis',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'The Centre for East Asian Studies (CEAS) organized a “Distinguished Lecture Series” on 17 April 2023. '
              'Prof. Brian K Langenberg, Professor of Banking, Finance, and Investments at Vietnam National University, Hanoi & '
              'Northeastern Illinois University, US, spoke on “Building Trade Amidst Global Rivalry and Another Financial Crisis.”\n\n'
              'During his presentation, Prof. Langenberg covered various topics related to economics, including the changing role of global hegemony '
              'and the effects of the rise of China on the world economy. He examined how the rise of China has challenged the US hegemony and how the world '
              'economy has shifted as a result. Additionally, he discussed the macroeconomic challenges that have arisen in the post-Pandemic world.\n\n'
              'The presentation was divided into four sub-themes. The first sub-theme was the comparison of the 2008 financial crisis during the Bush Jr. administration '
              'with the current situation in 2023. Prof. Langenberg explained how US federal reserve policies aimed at stopping inflation backfired due to various factors.\n\n'
              'The second sub-theme was the challenges to the Dollar\'s hegemony and the rise of an alternative reserve currency. He argued that while many countries '
              'considered replacing the Dollar as the principal currency of international trade, it was not facing an imminent end.\n\n'
              'The third sub-theme was the debate surrounding countries transitioning to green energy. Prof. Langenberg argued that developing countries would continue to '
              'rely on hydrocarbons due to the time it would take for the green transition to occur.\n\n'
              'In the fourth sub-theme, Prof. Langenberg recommended that India take advantage of its demographic benefit by restructuring its capital investment policies '
              'to attract companies relocating from China.\n\n'
              'During the lecture, the participants also discussed topics such as the BRICS currency and denuclearisation. Prof. Langenberg noted that there was little agreement '
              'among the BRICS countries regarding the currency, and most countries still preferred to use the US dollar. He also mentioned that France was leading Europe in establishing '
              'more nuclear plants, thus voiding the idea of denuclearisation.',
              style: TextStyle(fontSize: 16, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
