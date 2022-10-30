import 'package:flutter/material.dart';
import 'ui/create_task_page.dart';
import 'ui/index_task_page.dart';
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
        '/': (context) => const MyHomePage(),
        '/indexTaskPage': (context) => const IndexTaskPage(),
        '/createTaskPage': (context) => const CreateTaskPage(),
      },
    );
  }
}
