import 'package:flutter/material.dart';
import 'package:flutter_starter/ui/second_page.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'Depan'),
        '/second': (context) => const SecondPage(),
      },
      // home: const MyHomePage(
      //   title: 'Selamat Datang',
      // ),
    );
  }
}
