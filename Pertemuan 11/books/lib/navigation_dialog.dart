import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = const Color.fromARGB(255, 152, 25, 210);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            _showColorDialog(context);
          },
        ),
      ),
    );
  }

  _showColorDialog(BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
            TextButton(
              child: const Text('Yellow'),
              onPressed: () {
                color = const Color.fromARGB(255, 245, 248, 76);
                Navigator.pop(context, color);
              },
            ),
            TextButton(
              child: const Text('Pink'),
              onPressed: () {
                color = const Color.fromARGB(255, 245, 134, 212);
                Navigator.pop(context, color);
              },
            ),
            TextButton(
              child: const Text('Orange'),
              onPressed: () {
                color = const Color.fromARGB(255, 210, 124, 25);
                Navigator.pop(context, color);
              },
            ),
          ],
        );
      },
    );
    setState(() {});
  }
}
