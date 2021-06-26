import 'package:flutter/material.dart';
import 'package:project_android/doctor_dashboard/currentpatients.dart';
import 'package:project_android/doctor_dashboard/doctorprofile.dart';
import 'package:project_android/doctor_dashboard/doneappointments.dart';


class doctordashboard extends StatefulWidget {
  @override
  _doctordashboardState createState() => _doctordashboardState();
}

class _doctordashboardState extends State<doctordashboard> {
  int _currentIndex=0;
  List<Widget> _widgetOptions= <Widget> [
        patients(),
        done(),
        doctorprofile(),
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
              icon: Icon(Icons.people),
            title: Text('Patients'),
            backgroundColor: Colors.green
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.check),
              title: Text('Done'),
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