import 'package:abc_doctorz/views/doctor_profile/doctor_profile.dart';
import 'package:abc_doctorz/views/home_screen.dart';
import 'package:flutter/material.dart';

class BottomNavyScreen extends StatefulWidget {
  @override
  _BottomNavyScreenState createState() => _BottomNavyScreenState();
}

class _BottomNavyScreenState extends State<BottomNavyScreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    HomeScreen(),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.purple,
    ),
    DoctorProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(color: Colors.purple),
        selectedItemColor: Colors.purple,
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Appointment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Helpline',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
