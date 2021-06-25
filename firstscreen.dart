import 'package:flutter/material.dart';
import 'package:project_android/login/patientlogin.dart';

import 'doctorlogin.dart';
class firstScreen extends StatefulWidget {
  @override
  _firstScreenState createState() => _firstScreenState();
}

class _firstScreenState extends State<firstScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
       Scaffold(
          backgroundColor: Colors.red,
              body: SingleChildScrollView(
          child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
          //Column(children: [
              Container(
          margin: EdgeInsets.only(top: 60),
                 child: Center(
                  child: Text( 'Please select your role',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, color: Colors.green),
              )
          ),
        ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              margin: EdgeInsets.all(40),
              width: double.infinity,
              child: FlatButton(
                color: Colors.white,
                onPressed: () {
            Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => doctorlogin()),
            (route) => false);
            },
                child: Text(
                  'Doctor',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Text(
                'OR',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32, color: Colors.green),
              ),
            ),
               SizedBox(
                 height: 20.0,
               ),
            Container(
              margin: EdgeInsets.all(40),
              width: double.infinity,
              child: FlatButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => patientloginscreen()),
                          (route) => false);
                },
                child: Text(
                  'Patient',
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),
                ),
              ),
            ),
          ],
        ),
    ),
    ),
    ],
      );
    //);
  }
}
