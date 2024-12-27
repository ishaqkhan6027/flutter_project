import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/createAccount.dart';
import 'package:flutter_application_1/screen/home_screen.dart';
import 'package:flutter_application_1/screen/notification_screen.dart';
import 'package:flutter_application_1/widgets/colorsWidget.dart';

class bNavigationbar extends StatefulWidget {
  @override
  _bNavigationbar createState() => _bNavigationbar();
}

class _bNavigationbar extends State<bNavigationbar> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    TravelNotificationScreen(),
    CreateAccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getPrimeryColor(),
      body: _screens[_currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 73, 73, 73),
          selectedItemColor: getSecondaryColor(),
          unselectedItemColor: getThirdColor(),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
