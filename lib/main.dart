import 'package:flutter/material.dart';
import 'package:flutter_starter/ui/another_screen.dart';
import 'package:flutter_starter/ui/replacement_screen.dart';
import 'package:flutter_starter/ui/return_data_screen.dart';
import 'package:flutter_starter/ui/second_screen.dart';
import 'package:flutter_starter/ui/second_screen_with_data.dart';
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
        '/': (context) => const MyHomePage(
              title: 'Depan',
            ),
        '/secondScreen': (context) => const SecondScreen(),
        '/secondScreenWithData': (context) => SecondScreenWithData(
            data: ModalRoute.of(context)?.settings.arguments as String),
        '/returnDataScreen': (context) => const ReturnDataScreen(),
        '/replacementScreen': (context) => const ReplacementScreen(),
        '/anotherScreen': (context) => const AnotherScreen(),
      },
    );
  }
}
