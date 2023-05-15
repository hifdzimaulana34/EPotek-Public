import 'package:flutter/material.dart';
import 'package:uas_epotek/array.dart';
import 'package:uas_epotek/checboxState.dart';

class keluhan extends StatefulWidget {
  @override
  _keluhanState createState() => _keluhanState();
}

class _keluhanState extends State<keluhan> {
  bool value = false;

  final checklist = [
    CheckBoxState(title: 'Batuk'),
    CheckBoxState(title: 'Pilek'),
    CheckBoxState(title: 'Pusing'),
    CheckBoxState(title: 'Flu'),
    CheckBoxState(title: 'Mual'),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffB0B8B4),
      appBar: AppBar(
        title: const Text('Menu Keluhan'),
        backgroundColor: Color(0xff184A45),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              ...checklist.map(buildSingleCheckbox).toList(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff184A45),
                minimumSize: Size.fromHeight(50),
              ),
              icon: const Icon(Icons.check, size: 32),
              label: const Text(
                'Cari',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                filters = checklist
                    .where((e) => e.value)
                    .map((e) => e.title)
                    .toList();
                Navigator.pushNamed(context, 'filtered');
              },
            ),
          )
        ],
      ),
    );
  }

  Widget buildSingleCheckbox(CheckBoxState checkbox) => CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(
          checkbox.title,
          style: TextStyle(fontSize: 20, fontWeight: (FontWeight.bold)),
        ),
        activeColor: Color(0xffFC766A),
        value: checkbox.value,
        onChanged: (value) => setState(() => checkbox.value = value!),
      );
}
