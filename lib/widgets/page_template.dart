import 'package:flutter/material.dart';

class PageTemplate extends StatelessWidget {
  final String title;
  final Widget? body;
  final PreferredSizeWidget? bottom;
  final Widget? bottomNav;

  const PageTemplate({
    super.key,
    required this.title,
    this.body,
    this.bottom,
    this.bottomNav,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        bottom: bottom,          // for SecondaryNav inside Six‑Pillars pages
      ),
      body: body ?? const Center(child: Text('Content goes here')),
      bottomNavigationBar: bottomNav,
    );
  }
}
