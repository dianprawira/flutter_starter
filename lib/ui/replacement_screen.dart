import 'package:flutter/material.dart';

class ReplacementScreen extends StatelessWidget {
  const ReplacementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Buka Halaman Berikutnya'),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/anotherScreen');
          },
        ),
      ),
    );
  }
}
