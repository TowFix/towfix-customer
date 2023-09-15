import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:towfix/src/history/presentation/history_screen.dart';
import 'package:towfix/src/home/presentation/pages/home.dart';
import 'package:towfix/src/profile/presentation/pages/profile_screen.dart';
import 'package:towfix/src/settings/presentation/pages/settings_screen.dart';

class Dashboard extends ConsumerStatefulWidget {
  const Dashboard({super.key});

  @override
  ConsumerState<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends ConsumerState<Dashboard> {
  final _pages = [
    const HomeScreen(),
    const HistorySCreen(),
    const SettingsScreen(),
    const ProfileScreen(),
  ];

  final _pageController = PageController();

  final _currentPageProvider = StateProvider<int>((ref) => 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          ref.read(_currentPageProvider.notifier).state = value;
        },
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme:
              IconThemeData(color: Theme.of(context).primaryColor),
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey,
          // showUnselectedLabels: true,
          onTap: (value) {
            // Respond to item press.
            log('Bottom Nav Bar Item Pressed: $value');
            _pageController.jumpToPage(value);
            ref.read(_currentPageProvider.notifier).state = value;
          },
          currentIndex: ref.watch(_currentPageProvider),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                activeIcon: Icon(Icons.home_filled)),
            BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'History',
                activeIcon: Icon(Icons.settings_accessibility)),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
                activeIcon: Icon(Icons.report_gmailerrorred)),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                activeIcon: Icon(Icons.person_outline)),
          ]),
    );
  }
}
