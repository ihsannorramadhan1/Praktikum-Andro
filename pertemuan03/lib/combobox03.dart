import 'package:flutter/material.dart';

class Combobox03 extends StatefulWidget {
  const Combobox03({super.key});

  @override
  State<Combobox03> createState() => _Combobox03State();
}

class _Combobox03State extends State<Combobox03> {
  // Variabel untuk menyimpan item yang terpilih
  String? selectedItem;

  // Daftar item dengan ikon
  final List<Map<String, dynamic>> items = [
    {'value': 'Rumah', 'icon': Icons.home},
    {'value': 'Bintang', 'icon': Icons.star},
    {'value': 'Pengaturan', 'icon': Icons.settings},
    {'value': 'Pengguna', 'icon': Icons.person},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ComboBox dan Ikon'),
      ),
      body: Center(
        child: DropdownButton<String>(
          value: selectedItem,
          hint: const Text('Pilih Item'),
          onChanged: (String? newValue) {
            setState(() {
              selectedItem = newValue; // Set item yang dipilih
            });
          },
          items: items.map<DropdownMenuItem<String>>((Map<String, dynamic> item) {
            return DropdownMenuItem<String>(
              value: item['value'],
              child: Row(
                children: [
                  Icon(item['icon']),
                  const SizedBox(width: 8),
                  Text(item['value']),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
