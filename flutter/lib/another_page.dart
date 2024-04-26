import 'package:flutter/material.dart';

class AnotherPage extends StatelessWidget {
  const AnotherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Another Page'),
            ElevatedButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Go to Home')),
          ],
        ),
      ),
    );
  }
}
