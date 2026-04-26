import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String deadline;

  const TaskCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.deadline,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            width: 6,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(subtitle),
                  Text("Deadline: $deadline"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}