import 'package:flutter/material.dart';

class WorkshopTwoPage extends StatelessWidget {
  const WorkshopTwoPage({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          '	Capacity Building Workshop for Doctoral Scholars',
          style: TextStyle(fontFamily: 'Montserrat',color: Colors.white,),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'A	Capacity Building Workshop for Doctoral Scholars Highlights',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman Regular',
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),

            Image.asset('assets/images/workshops/cap1.jpeg'),
            const SizedBox(height: 16),

            Image.asset('assets/images/workshops/cap2.jpeg'),
            const SizedBox(height: 16),

            Image.asset('assets/images/workshops/cap3.jpeg'),
            const SizedBox(height: 16),


            const Text(
              '',
              style: TextStyle(fontSize: 16, fontFamily: 'Times New Roman Regular',color: Colors.white,),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}

