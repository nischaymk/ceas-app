import 'package:flutter/material.dart';

class ChinaTalkSeriesPage extends StatelessWidget {
  const ChinaTalkSeriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('China Talk Series'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Full details about the China Talk Series...\n\n'
          'The Centre holds ‘China Talk Series’ aimed at an objective understanding of China periodically. '
          'Topics of the talk series touch on various aspects of China including geopolitics, culture, economic development, digital strategy, and more.\n\n'
          'These sessions include experts, researchers, and diplomats providing insights into the region’s policy landscape and society.',
          style: TextStyle(fontSize: 16, fontFamily: 'Times New Roman Regular', height: 1.5),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
