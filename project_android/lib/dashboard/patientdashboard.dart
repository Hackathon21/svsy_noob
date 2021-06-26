import 'package:flutter/material.dart';
import 'package:project_android/patientdashboard/bookappointments.dart';
import 'package:project_android/patientdashboard/myappointments.dart';
import 'package:project_android/patientdashboard/patientprofile.dart';


class patientdashboard extends StatefulWidget {
  @override
  _patientdashboardState createState() => _patientdashboardState();
}

class _patientdashboardState extends State<patientdashboard> {
  int _currentIndex=0;
  List<Widget> _widgetOptions= <Widget> [
    book(),
    myappointment(),
    patientprofile(),
  ];
  void onindexTap (int index) {
    setState(() {
      _currentIndex= index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Book'),
              backgroundColor: Colors.green
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_add_check_outlined),
              title: Text('My Appointments'),
              backgroundColor: Colors.green
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              backgroundColor: Colors.green
          ),
        ],
        currentIndex: _currentIndex,
        onTap: onindexTap,
      ),
    );
  }
}