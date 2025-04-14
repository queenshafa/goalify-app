import 'package:flutter/material.dart';
import 'package:goalify/presentasi/screen/competition_screen.dart';
import 'package:goalify/presentasi/screen/event_screen.dart';
import 'package:goalify/presentasi/screen/home.dart';
import 'package:goalify/presentasi/screen/home_screen.dart';
import 'package:goalify/presentasi/screen/testhome.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const Testhome(),
    const CompetitionScreen(),
    const EventScreen(),
    const Home()
    // Tambahin Goals dan Profile kalo udah ada
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _screens[_selectedIndex],
      backgroundColor: Colors.transparent,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.indigo[900],
          borderRadius: BorderRadius.circular(30),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: [
              _navBarItem('assets/images/navbar-assets/home.png', 'Home'),
              _navBarItem('assets/images/navbar-assets/goals.png', 'Goals'),
              _navBarItem('assets/images/navbar-assets/competitions.png',
                  'Competitions'),
              _navBarItem('assets/images/navbar-assets/events.png', 'Events'),
              _navBarItem('assets/images/navbar-assets/profile.png', 'Profile'),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _navBarItem(String iconPath, String label) {
    return BottomNavigationBarItem(
      icon: Image.asset(iconPath, width: 24, height: 24),
      label: label,
    );
  }
}
