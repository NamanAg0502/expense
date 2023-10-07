import 'package:expense/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getScreenForIndex(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        enableFeedback: false,
        // elevation: 2,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: _onTabTapped,
        items: [
          _buildBottomNavItem(index: 0, icon: BoxIcons.bx_home, label: 'Home'),
          _buildBottomNavItem(
              index: 1, icon: BoxIcons.bx_pie_chart_alt, label: 'Statistics'),
          _buildBottomNavItem(
              index: 2, icon: BoxIcons.bx_user, label: 'Account'),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavItem(
      {required int index, required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _currentIndex == index
              ? Colors.black12 // Color for selected tab
              : Colors.transparent, // Color for unselected tabs
        ),
        padding: const EdgeInsets.all(8), // Adjust the padding as needed
        child: Icon(
          icon,
          size: 24, // Adjust the icon size as needed
          color: _currentIndex == index
              ? Colors.black // Color for selected tab
              : Colors.black54, // Color for unselected tabs
        ),
      ),
      label: label,
    );
  }

  Widget _getScreenForIndex(int index) {
    switch (index) {
      case 0:
        return const HomeScreen();
      case 1:
        return const HomeScreen();
      case 2:
        return const HomeScreen();
      default:
        return Container();
    }
  }
}
