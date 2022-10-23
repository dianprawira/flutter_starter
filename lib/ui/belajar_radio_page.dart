import 'package:flutter/material.dart';

enum DosenSisfo { ilhamsyah, renny, dian, syahru, nurul, ibnur, ferdy }

class BelajarRadioPage extends StatefulWidget {
  const BelajarRadioPage({super.key});

  @override
  State<BelajarRadioPage> createState() => _BelajarRadioPageState();
}

class _BelajarRadioPageState extends State<BelajarRadioPage> {
  final myController = TextEditingController();
  DosenSisfo? _ds;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Radio Button'),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('Renny Puspita Sari'),
            leading: Radio(
              value: DosenSisfo.renny,
              groupValue: _ds,
              onChanged: (DosenSisfo? value) {
                setState(() {
                  _ds = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Ilhamsyah'),
            leading: Radio(
              value: DosenSisfo.ilhamsyah,
              groupValue: _ds,
              onChanged: (DosenSisfo? value) {
                setState(() {
                  _ds = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
