import 'package:flutter/material.dart';

class StudiKasus01 extends StatelessWidget {
  const StudiKasus01({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Column, Row, and Scroll',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Scroll Demo'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(16.0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.list,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Daftar Anggota',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              ...List.generate(
                100,
                (i) => ListTile(
                  title: Text('Anggota ${i + 1}'),
                  subtitle: Text('Informasi Tentang Anggota ${i + 1}'),
                  leading: const Icon(Icons.person),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
