import 'package:flutter/material.dart';

class WorkshopThreePage extends StatelessWidget {
  const WorkshopThreePage({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          '	Capacity Building Workshop for Doctoral Scholars ',
          style: TextStyle(fontFamily: 'Montserrat',color: Colors.white,),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            const Text(
              '	The Centre for East Asian Studies organized its annual China Talk Series on 30th October 2023, featuring a lecture by Prof. Xin Wang, Associate Professor at Baylor University, Texas. The lecture, titled "Urban Transformation: The Tale of China’s Urbanization Journey," focused on China’s rapid urbanization and its global implications. Prof. Wang, an expert on Chinese society, explored the transformative policies of leaders like Deng Xiaoping and Late Premier Li Keqiang, along with the development of coastal regions such as Shanghai and Shenzhen.',
              style: TextStyle(fontSize: 16, fontFamily: 'Times New Roman Regular', color: Colors.white),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 20),
            Image.asset('assets/images/workshops/capacity1.JPG'), 
            const SizedBox(height: 20),

            const SizedBox(height: 20),
            Image.asset('assets/images/workshops/capacity2.JPG'), 
            const SizedBox(height: 20),

            const Text(
              '''Prof. Wang discussed key drivers of urbanization, including migration and city clusters like the Pearl River Delta and Yangtze River Delta, which enhance regional collaboration and competitiveness. He highlighted the social impacts of migration, including urban infrastructure strain and social stratification, while also presenting case studies, such as Beijing's transformation from an ancient capital to a modern industrial hub.''''''The session concluded with a dynamic Q&A, addressing topics like challenges faced by migrant workers, urbanization's impact on climate strategies, and housing crises in cities like Shanghai. Prof. Wang also discussed potential solutions, including South Korea’s housing subscription system. The event ended with a vote of thanks by Prof. Madhumati Deshpande, leaving the audience with valuable insights into China's urbanization journey. ''',
              style: TextStyle(fontSize: 16, fontFamily: 'Times New Roman Regular',color:Colors.white),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 20),
            Image.asset('assets/images/workshops/capacity3.JPG'), 
            const SizedBox(height: 20),


          ],
        ),
      ),
    );
  }
}

