import 'package:flutter/material.dart';
import 'contohstatefullwidget.dart';
import 'contohstatelesswidget.dart';
import 'checkbox01.dart';
import 'checkbox02.dart';
import 'studikasus01.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pertemuan 02',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Studikasus01() // Ganti dengan widget yang Anda pilih (Baris atau Kolom)
    );
  }
}
