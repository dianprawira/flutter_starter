import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Kedua'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Halaman Kedua'),
            ElevatedButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.navigate_before),
                label: const Text('Back'))
          ],
        ),
      ),
    );
  }
}
