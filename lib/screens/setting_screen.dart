import 'package:flutter/material.dart';
import 'home.dart';
import 'schedule_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool deadline = true;
  bool harian = true;
  bool bunyikan = true;

  void _onTap(int index) {
    if (index == 0) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const HomeScreen()));
    } else if (index == 1) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const ScheduleScreen()));
    }
  }

  Widget buildSwitch(String title, bool value, Function(bool) onChanged) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: SwitchListTile(
        activeColor: const Color(0xFF8B5CF6),
        title: Text(title),
        value: value,
        onChanged: onChanged,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8B5CF6),
        elevation: 0,
        title: const Text("Setting"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            buildSwitch("Peringatan Deadline", deadline,
                    (val) => setState(() => deadline = val)),
            buildSwitch(
                "Harian", harian, (val) => setState(() => harian = val)),
            buildSwitch("Bunyikan", bunyikan,
                    (val) => setState(() => bunyikan = val)),
          ],
        ),
      ),

      // 🔻 Bottom Nav
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        onTap: _onTap,
        selectedItemColor: const Color(0xFF8B5CF6),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
        ],
      ),
    );
  }
}