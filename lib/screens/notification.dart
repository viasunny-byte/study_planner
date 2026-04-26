import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    // dummy data notifikasi (frontend dulu)
    final List<Map<String, String>> notifications = [
      {
        "title": "Tugas Hampir Deadline!",
        "desc": "Progres Tubes - Aplikasi Perangkat Bergerak",
        "time": "Hari ini, 23:59"
      },
      {
        "title": "Reminder Belajar",
        "desc": "Jangan lupa lanjut Sistem Cerdas ya!",
        "time": "Hari ini, 10:00"
      },
      {
        "title": "Tugas Selesai 🎉",
        "desc": "Penetrasi dan Pengujian Etika Peretasan",
        "time": "Kemarin"
      },
    ];

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Notifikasi"),
        backgroundColor: Colors.deepPurple,
      ),
      body: notifications.isEmpty
          ? const Center(
        child: Text(
          "Belum ada notifikasi",
          style: TextStyle(color: Colors.grey),
        ),
      )
          : ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notif = notifications[index];

          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 5,
                )
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.notifications, color: Colors.deepPurple),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        notif["title"]!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        notif["desc"]!,
                        style: const TextStyle(fontSize: 12),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        notif["time"]!,
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}