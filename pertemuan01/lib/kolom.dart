import 'package:flutter/material.dart';

class Kolom extends StatefulWidget {
  const Kolom({super.key});

  @override
  State<Kolom> createState() => _KolomState();
}

class _KolomState extends State<Kolom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Belajar Kolom'),
      ),
      body: Container(
        color: Colors.blue[400], // Tambahkan warna latar belakang
        child: Column(
          children: [
            Text(
              'Flutter 01',
              style: TextStyle(fontSize: 30, color: Colors.yellow[300]),
            ),
            Text(
              'Flutter 02',
              style: TextStyle(fontSize: 30, color: Colors.yellow[300]),
            ),
            Text(
              'Flutter 03',
              style: TextStyle(fontSize: 30, color: Colors.yellow[300]),
            ),
            Text(
              'Flutter 04',
              style: TextStyle(fontSize: 30, color: Colors.yellow[300]),
            ),
            Text(
              'Flutter 05',
              style: TextStyle(fontSize: 30, color: Colors.yellow[300]),
            ),
            Container(
              color: Colors.amber,
              height: 80,
              width: 120,
            ),
          ],
        ),
      ),
    );
  }
}
