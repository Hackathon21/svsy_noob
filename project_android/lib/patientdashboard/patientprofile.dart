import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class patientprofile extends StatefulWidget {
  @override
  _patientprofileState createState() => _patientprofileState();
}

class _patientprofileState extends State<patientprofile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text("Profile"),
              backgroundColor: Colors.green,
            ),
            body: SingleChildScrollView(

            ),
          ),
        ]
    );
  }

}