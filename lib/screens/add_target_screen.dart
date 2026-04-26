import 'package:flutter/material.dart';

class AddTargetScreen extends StatefulWidget {
  const AddTargetScreen({super.key});

  @override
  State<AddTargetScreen> createState() => _AddTargetScreenState();
}

class _AddTargetScreenState extends State<AddTargetScreen> {
  final _titleController = TextEditingController();
  double _progress = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Target"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: "Nama Mata Kuliah",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            Text("Progress: ${(_progress * 100).toInt()}%"),
            Slider(
              value: _progress,
              onChanged: (val) => setState(() => _progress = val),
            ),

            const Spacer(),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
              ),
              onPressed: () {
                Navigator.pop(context, {
                  "title": _titleController.text,
                  "percent": "${(_progress * 100).toInt()}%",
                  "value": _progress,
                  "isDone": _progress == 1,
                  "subTasks": [],
                });
              },
              child: const Text("SIMPAN"),
            )
          ],
        ),
      ),
    );
  }
}