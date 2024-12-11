import 'package:flutter/material.dart';

class Baris extends StatefulWidget {
  const Baris({super.key});

  @override
  State<Baris> createState() => _KolomState();
}

class _KolomState extends State<Baris> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Belajar Baris'),
      ),
      body: Container(
        color: Colors.blue[400], // Tambahkan warna latar belakang
        child: Row(
          children: [
            Text(
              'Flutter 01',
              style: TextStyle(fontSize: 30, color: Colors.yellow[300]),
            ), const SizedBox(width: 20,),
            Text(
              'Flutter 02',
              style: TextStyle(fontSize: 30, color: Colors.yellow[400]),
            ), const SizedBox(width: 20,),
            Text(
              'Flutter 03',
              style: TextStyle(fontSize: 30, color: Colors.yellow[500]),
            ), const SizedBox(width: 20,),
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
