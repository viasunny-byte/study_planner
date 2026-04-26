import 'package:flutter/material.dart';
import '../screens/home.dart';
import '../screens/notification.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNav({super.key, required this.currentIndex});

  void _navigate(BuildContext context, int index) {
    if (index == currentIndex) return;

    Widget page;

    if (index == 0) {
      page = const StudyPlannerDashboard();
    } else {
      page = const NotificationPage();
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (i) => _navigate(context, i),
      selectedItemColor: Colors.deepPurple,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
      ],
    );
  }
}