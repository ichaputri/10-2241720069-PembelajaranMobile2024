import 'package:flutter/material.dart';

import 'navigation_second.dart';

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = const Color.fromARGB(255, 136, 25, 210);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation First Screen Icha'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Change Color"),
          onPressed: () {
            _navigateAndGetColor(context);
          },
        ),
      ),
    );
  }

// Function to navigate and get color (function content not included)
  Future<void> _navigateAndGetColor(BuildContext context) async {
    color = await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NavigationSecond()),
        ) ??
         const Color.fromARGB(255, 136, 25, 210);

    setState(() {});
  }
}
