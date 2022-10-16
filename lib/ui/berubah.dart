import 'package:flutter/material.dart';

class Berubah extends StatefulWidget {
  const Berubah({super.key, required this.title});

  final String title;

  @override
  State<Berubah> createState() => _BerubahState();
}

class _BerubahState extends State<Berubah> {
  String judul = "Judul Teks";

  void _ubahJudul() {
    setState(() {
      judul = "Judulnya sudah berubah";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(judul),
            ElevatedButton(onPressed: _ubahJudul, child: const Text('Tekan'))
          ],
        ),
      ),
    );
  }
}
