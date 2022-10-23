import 'package:flutter/material.dart';

class BelajarListenerPage extends StatefulWidget {
  const BelajarListenerPage({super.key});

  @override
  State<BelajarListenerPage> createState() => _BelajarListenerPageState();
}

class _BelajarListenerPageState extends State<BelajarListenerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Listener(
          onPointerDown: (event) => print("Ditekan ke bawah $event"),
          onPointerUp: (event) => print("Diangkat tekanannya $event"),
          onPointerPanZoomUpdate: (event) =>
              print("Bunga diusap pada ordinat $event"),
          child: Image.asset('assets/images/bunga.png'),
        ),
      ),
    );
    ;
  }
}
