import 'package:d_day_app/pages/calendar/calendar_page.dart';
import 'package:d_day_app/pages/d_day/d_day_page.dart';
import 'package:d_day_app/pages/diary/diary_page.dart';
import 'package:d_day_app/pages/settings_page/settings_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_filled), label: ''),
            NavigationDestination(
                icon: Icon(Icons.event_note_outlined), label: ''),
            NavigationDestination(
                icon: Icon(Icons.calendar_month_outlined), label: ''),
            NavigationDestination(icon: Icon(Icons.settings), label: '')
          ],
          selectedIndex: currentIndex,
          onDestinationSelected: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        body: IndexedStack(
          index: currentIndex,
          children: const [
            DDayPage(),
            DiaryPage(),
            CalendarPage(),
            SettingsPage(),
          ],
        ),
      ),
    );
  }
}
