import 'package:flutter/material.dart';

class ProfxiawangPage extends StatelessWidget {
  const ProfxiawangPage({super.key});

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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Urban Transformation: The Tale of China’s Urbanization Journey',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'The Centre for East Asian Studies, on 30 October 2023, organized the annual China Talk Series. The topic of the lecture was "Urban Transformation: The Tale of China’s Urbanization Journey". Prof. Xin Wang opened the session by giving an overview of urbanization in the world, how the 21st century will not just witness the urbanization of China but will see rapid global urbanization.\n\n'
              'He further gives a background of urbanization in China and speedy urbanization in coastal areas like Macau and Shanghai. He highlighted the reformatory policies of Deng Xiaoping and Late PM Li Keqiang that led to this growth spur. He describes the main drivers of Urbanization and presents a case study of the Chinese city of Shenzhen, how a fishing village was transformed into a global technology hub, which is home to technology leaders like Huawei, DJI, and Tencent.\n\n'
              'The concept of city clusters was widely discussed. The structure of China’s various city clusters like Cheng-Yu, Jing-Jin-Ji, Pearl River Delta, and Yangtze River Delta amazed the students. He emphasized cities in a cluster will collaborate economically and politically, boost each region’s competitiveness, develop regional transportation and infrastructure, and increase the labor market.\n\n'
              'Prof. Xin Wang described Migration as a key driver of urbanization in China. Migrant workers contribute significantly to China’s economic growth by providing the necessary labor force. He highlighted the spatial pattern of Migration as "peacocks flying to the southeast," as this migration was from rural areas to the urban southeast. He briefly talked about the social impact of this migration, such as – the strain on urban infrastructure, social stratification, and the left-behind population in rural China.\n\n'
              'He shared the exciting case study of Beijing, how this socialist city was built on an ancient capital, and how it was reconstructed from a traditional cultural and administrative town into a heavily industrialist city. He also taught about the various stages of expansion of Beijing in the form of the ring roads. The first ring road started in the 1950s, and now China has been working on its seventh ring road since 2010.',
              style: TextStyle(
                fontSize: 17,
                height: 1.5,
                fontFamily: 'Times New Roman Regular',
                color: Colors.white,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24),
            Image.asset('assets/images/lectures/xinwang1.png'),
            const SizedBox(height: 12),
            Image.asset('assets/images/lectures/xinwang2.png'),
          ],
        ),
      ),
    );
  }
}
