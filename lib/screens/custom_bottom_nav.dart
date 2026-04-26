import 'package:flutter/material.dart';
import 'home.dart';
import 'schedule_screen.dart';
import 'setting_screen.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNav({super.key, required this.currentIndex});

  void _navigate(BuildContext context, int index) {
    if (index == currentIndex) return;

    Widget page;

    if (index == 0) {
      page = HomeScreen();
    } else if (index == 1) {
      page = const ScheduleScreen();
    } else if (index == 2) {
      page = const ScheduleScreen();
    } else {
      page = const SettingScreen();
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: const Color(0xFFE5E7EB),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(Icons.home_outlined,
                color: currentIndex == 0 ? Colors.black : Colors.grey),
            onPressed: () => _navigate(context, 0),
          ),
          IconButton(
            icon: Icon(Icons.pie_chart_outline,
                color: currentIndex == 1 ? Colors.black : Colors.grey),
            onPressed: () => _navigate(context, 1),
          ),
          IconButton(
            icon: Icon(Icons.menu_book_outlined,
                color: currentIndex == 2 ? Colors.black : Colors.grey),
            onPressed: () => _navigate(context, 2),
          ),
          IconButton(
            icon: Icon(Icons.person_outline,
                color: currentIndex == 3 ? Colors.black : Colors.grey),
            onPressed: () => _navigate(context, 3),
          ),
        ],
      ),
    );
  }
}
