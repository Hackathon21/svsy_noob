import 'package:flutter/material.dart';


class doctordashboard extends StatefulWidget {
  @override
  _doctordashboardState createState() => _doctordashboardState();
}

class _doctordashboardState extends State<doctordashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}