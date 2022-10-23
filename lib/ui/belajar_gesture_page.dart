import 'package:flutter/material.dart';

class BelajarGesturePage extends StatefulWidget {
  const BelajarGesturePage({super.key});

  @override
  State<BelajarGesturePage> createState() => _BelajarGesturePageState();
}

class _BelajarGesturePageState extends State<BelajarGesturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            print('Saya ditekan');
          },
          onPanUpdate: (details) {
            var ordx = details.delta.dx;
            var ordy = details.delta.dy;
            print("Saya didrag usap x = $ordx dan y = $ordy");
          },
          onDoubleTap: () => print('Saya ditekan dua kali'),
          onLongPress: () => print('Saya ditekan agak lama'),
          onTapDown: (a) => print('Saya Tekan ke bawah'),
          onTapUp: (a) => print('Saya Lepas dari tekanan'),
          child: Image.asset('assets/images/bunga.png'),
        ),
      ),
    );
  }
}
