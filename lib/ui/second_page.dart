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
        child: ElevatedButton(
          onPressed: () => print('Tempat aksinya'),
          child: const Text('GoBack'),
        ),
      ),
    );
  }
}
