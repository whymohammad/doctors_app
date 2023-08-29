// ignore_for_file: library_private_types_in_public_api

import 'package:abc_doctorz/views/appoinment/appoinment.dart';
import 'package:abc_doctorz/views/doctor_profile/doctor_profile.dart';
import 'package:abc_doctorz/views/home_screen.dart';
import 'package:abc_doctorz/views/patient_mdeical_record/patient_medical_record.dart';
import 'package:flutter/material.dart';

class BottomNavyScreen extends StatefulWidget {
  const BottomNavyScreen({super.key});

  @override
  _BottomNavyScreenState createState() => _BottomNavyScreenState();
}

class _BottomNavyScreenState extends State<BottomNavyScreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    const HomeScreen(),
    const AppoinmentScreen(),
    const PatientMedicalRecord(),
    const DoctorProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(color: Colors.purple),
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
            icon: Icon(Icons.list_alt),
            label: 'Reports',
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
