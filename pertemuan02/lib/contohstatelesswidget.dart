import 'package:flutter/material.dart';

class Contohstalesswidget extends StatelessWidget{
    
    final TextEditingController_controlPesan = TextEditingController();

  Contohstalesswidget({super.key});
    
    @override
    Widget build(BuildContext contex) {
    
      return Scaffold(
        appBar: AppBar(title: const Text('Stateless Widget'),),
        body: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              TextField(
                controller: TextEditingController_controlPesan,
                decoration: const InputDecoration(labelText: 'Masukkan Pesan Asnda:'),

              ),
              Text(
                'Pesan : ${TextEditingController_controlPesan.text}',

              )
            ],
          ),
        ),
      );
  }
}