import 'package:flutter/material.dart';

class Daftarku extends StatelessWidget {
  const Daftarku({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          ListTile(
            leading: FlutterLogo(),
            title: Text('One-line with both widgets'),
            trailing: Icon(Icons.more_vert),
          ),
          ListTile(
            leading: FlutterLogo(),
            title: Text('Two-line with both widgets'),
            trailing: Icon(Icons.more_vert),
          ),
          ListTile(
            leading: FlutterLogo(),
            title: Text('Three-line with both widgets'),
            trailing: Icon(Icons.more_vert),
          ),
          ListTile(
            leading: FlutterLogo(),
            title: Text('Three-line with both widgets'),
            trailing: Icon(Icons.more_vert),
          ),
          ListTile(
            leading: FlutterLogo(),
            title: Text('Three-line with both widgets'),
            trailing: Icon(Icons.more_vert),
          ),
          ListTile(
            leading: FlutterLogo(),
            title: Text('Three-line with both widgets'),
            trailing: Icon(Icons.more_vert),
          ),
          ListTile(
            leading: FlutterLogo(),
            title: Text('Three-line with both widgets'),
            trailing: Icon(Icons.more_vert),
          ),
          ListTile(
            leading: FlutterLogo(),
            title: Text('Three-line with both widgets'),
            trailing: Icon(Icons.more_vert),
          ),
          ListTile(
            leading: FlutterLogo(),
            title: Text('Three-line with both widgets'),
            trailing: Icon(Icons.more_vert),
          ),
          ListTile(
            leading: FlutterLogo(),
            title: Text('Three-line with both widgets'),
            trailing: Icon(Icons.more_vert),
          ),
          ListTile(
            leading: FlutterLogo(),
            title: Text('Three-line with both widgets'),
            trailing: Icon(Icons.more_vert),
          ),
          ListTile(
            leading: FlutterLogo(),
            title: Text('Three-line with both widgets'),
            trailing: Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }
}
