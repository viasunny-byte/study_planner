import 'package:flutter/material.dart';

class AddTargetScreen extends StatefulWidget {
  const AddTargetScreen({super.key});

  @override
  State<AddTargetScreen> createState() => _AddTargetScreenState();
}

class _AddTargetScreenState extends State<AddTargetScreen> {
  final _titleController = TextEditingController();
  double _currentProgress = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Target Baru"), backgroundColor: Colors.white, foregroundColor: Colors.black, elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: "Nama Mata Kuliah", border: OutlineInputBorder()),
            ),
            const SizedBox(height: 30),
            Text("Progres: ${(_currentProgress * 100).toInt()}%", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Slider(
              value: _currentProgress,
              activeColor: Colors.deepPurple,
              onChanged: (val) => setState(() => _currentProgress = val),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
                onPressed: () {
                  Navigator.pop(context, {
                    "title": _titleController.text,
                    "percent": "${(_currentProgress * 100).toInt()}%",
                    "value": _currentProgress,
                    "subTasks": ["Tugas Baru"],
                    "isDone": _currentProgress == 1.0,
                  });
                },
                child: const Text("SIMPAN", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      ),
    );
  }
}