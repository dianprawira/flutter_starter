import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Halaman Kedua'),
              onPressed: () {
                Navigator.pushNamed(context, '/secondScreen');
              },
            ),
            ElevatedButton(
              child: const Text('Navigasi Beserta Data'),
              onPressed: () {
                Navigator.pushNamed(context, '/secondScreenWithData',
                    arguments: 'Ini merupakan teks dari halaman awal!');
              },
            ),
            ElevatedButton(
              child: const Text('Mengembalikan Data dari Halaman Sebelumnya'),
              onPressed: () async {
                final scaffoldMessenger = ScaffoldMessenger.of(context);
                final result =
                    await Navigator.pushNamed(context, '/returnDataScreen');
                SnackBar snackBar = SnackBar(content: Text('$result'));
                scaffoldMessenger.showSnackBar(snackBar);
              },
            ),
            ElevatedButton(
              child: const Text('Halaman Tertimpa'),
              onPressed: () {
                Navigator.pushNamed(context, '/replacementScreen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
