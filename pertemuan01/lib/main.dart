import 'package:flutter/material.dart';
import 'studikasus01.dart';
import 'baris.dart';
import 'kolom.dart';
import 'kotak.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pertemuan 01',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const StudiKasus01(), // Ganti dengan widget yang Anda pilih (Baris atau Kolom)
    );
  }
}
