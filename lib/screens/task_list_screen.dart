import 'package:flutter/material.dart';
import '../widgets/task_card.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECEFF1),
      appBar: AppBar(
        title: const Text("Daftar Tugas"),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          TaskCard(
            title: "Aplikasi Perangkat Bergerak",
            subtitle: "Progres Tugas",
            deadline: "18 April 2026",
          ),
        ],
      ),
    );
  }
}