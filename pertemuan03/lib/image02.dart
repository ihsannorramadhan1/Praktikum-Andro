import 'package:flutter/material.dart';

class Image02 extends StatelessWidget {
  const Image02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menampilkan Gambar'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/gambar1.jpeg'),
            Image.asset('assets/gambar2.jpeg'),
            Image.asset('assets/gambar3.jpeg'),
            Image.asset('assets/gambar4.jpeg'),
            Image.asset('assets/gambar5.jpeg'),
          ],
        ),
      ),
    );
  }
}
