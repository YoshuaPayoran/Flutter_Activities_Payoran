import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'about.dart';
import 'skills.dart';
import 'projects.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    AboutPage(),
    SkillPage(),
    ProjectsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Portfolio',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white
          )
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueGrey,
      ),

      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: _pages[_selectedIndex],
        transitionBuilder: (child, animation) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),

      bottomNavigationBar: SizedBox(
        height: 80,

        child: CupertinoTabBar(
          backgroundColor: Colors.black.withValues(alpha: 0.85),
          activeColor: Colors.blueAccent,
          inactiveColor: Colors.blueGrey,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              label: 'About',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.gear),
              label: 'Skills',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.briefcase),
              label: 'Projects',
            ),
          ],
        ),
      ),

    );
  }
}