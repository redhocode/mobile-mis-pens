import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainPage> {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1065812273.
  int _selectedIndex = 0;
  void _onTop(int Index){
    setState(() {
      _selectedIndex = Index;
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 30,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.grey,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      currentIndex: _selectedIndex,
      onTap: _onTop,
      items: [
        BottomNavigationBarItem(
          icon: Icon(_selectedIndex ==0 ? Icons.home : Icons.home_outlined),
          label: "Home"
          ),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:6102156.
          BottomNavigationBarItem(
          icon: Icon(_selectedIndex ==1 ? Icons.info : Icons.info_outline),
          label: "info"
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 2 ? Icons.person : Icons.person_outline),
            label: "Profile"
            )
      ],
    )
   );
  }
}