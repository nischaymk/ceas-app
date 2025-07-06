import 'package:flutter/material.dart';

class PillarsTabLayout extends StatelessWidget {
  final String title;
  final List<String> contentLabels;

  const PillarsTabLayout({super.key, required this.title, required this.contentLabels});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: contentLabels.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          bottom: TabBar(
            isScrollable: true,
            tabs: contentLabels.map((label) => Tab(text: label)).toList(),
          ),
        ),
        body: TabBarView(
          children: contentLabels.map((label) => Center(child: Text('$label Content'))).toList(),
        ),
      ),
    );
  }
}
