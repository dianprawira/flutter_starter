import 'package:flutter/material.dart';

class PemrosesanInputPage extends StatefulWidget {
  const PemrosesanInputPage({super.key});

  @override
  State<PemrosesanInputPage> createState() => _PemrosesanInputPageState();
}

class _PemrosesanInputPageState extends State<PemrosesanInputPage> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Masukkan Teks',
                ),
                controller: myController,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('PERHATIAN'),
                      content: Text(myController.text),
                    );
                  },
                );
              },
              child: const Text('Kirim'),
            )
          ],
        ),
      ),
    );
  }
}
