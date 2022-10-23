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
              child: const Text('Go to Second Screen'),
              onPressed: () {
                Navigator.pushNamed(context, '/secondScreen');
              },
            ),
            ElevatedButton(
              child: const Text('Navigation with Data'),
              onPressed: () {
                Navigator.pushNamed(context, '/secondScreenWithData',
                    arguments: 'Hello from First Screen!');
              },
            ),
            ElevatedButton(
              child: const Text('Return Data from Another Screen'),
              onPressed: () async {
                final scaffoldMessenger = ScaffoldMessenger.of(context);
                final result =
                    await Navigator.pushNamed(context, '/returnDataScreen');
                SnackBar snackBar = SnackBar(content: Text('$result'));
                scaffoldMessenger.showSnackBar(snackBar);
              },
            ),
            ElevatedButton(
              child: const Text('Replace Screen'),
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
