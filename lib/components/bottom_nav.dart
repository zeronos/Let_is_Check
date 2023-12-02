import 'package:flutter/material.dart';
import 'package:lets_check/screens/profile_screen.dart';
import 'package:lets_check/screens/home_screen.dart';

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;
  List pages = [HomeScreen(), ProfileScreen()];
  void onTap(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentPageIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.house), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_sharp), label: ''),
        ],
      ),
    );
  }
}
