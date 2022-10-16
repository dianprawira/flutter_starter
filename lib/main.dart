import 'package:flutter/material.dart';
import 'package:flutter_starter/ui/daftarku.dart';
import 'ui/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starter Template',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const Daftarku(
        title: 'Selamat Datang',
      ),
    );
  }
}
