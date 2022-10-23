import 'package:flutter/material.dart';

class Berubah extends StatefulWidget {
  const Berubah({super.key, required this.title});

  final String title;

  @override
  State<Berubah> createState() => _BerubahState();
}

class _BerubahState extends State<Berubah> {
  String lampu = 'assets/image/off.png';

  void _ubahJudul() {
    setState(() {
      lampu = 'assets/image/on.jpg';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(lampu),
            ElevatedButton(
              onPressed: _ubahJudul,
              child: const Text('Tekan'),
            )
          ],
        ),
      ),
    );
  }
}
