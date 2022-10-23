import 'package:flutter/material.dart';

class BelajarCheckboxPage extends StatefulWidget {
  const BelajarCheckboxPage({super.key});

  @override
  State<BelajarCheckboxPage> createState() => _BelajarCheckboxPageState();
}

class _BelajarCheckboxPageState extends State<BelajarCheckboxPage> {
  final myController = TextEditingController();
  bool isAgree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Checkbox'),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('Saya setuju dengan syarat dan ketentuan'),
            leading: Checkbox(
              value: isAgree,
              onChanged: (bool? value) {
                setState(() {
                  isAgree = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
