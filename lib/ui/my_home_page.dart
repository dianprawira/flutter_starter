import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Halaman Index'),
              onPressed: () {
                Navigator.pushNamed(context, '/indexTaskPage');
              },
            ),
            ElevatedButton(
              child: const Text('Tambah Tugas'),
              onPressed: () {
                Navigator.pushNamed(context, '/createTaskPage');
              },
            ),
            ElevatedButton(
              child: const Text('Lihat Tugas id:20'),
              onPressed: () {
                Navigator.pushNamed(context, '/singleTask');
              },
            ),
          ],
        ),
      ),
    );
  }
}
