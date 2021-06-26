import 'package:flutter/material.dart';
import 'package:project_android/models/patientlist_model.dart';
import 'package:project_android/widgets/patientlistwidget.dart';



class patients extends StatefulWidget {
  @override
  _patientsState createState() => _patientsState();
}

class _patientsState extends State<patients> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Current Patients"),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
          itemCount: PatientModel.items.length,
           itemBuilder: (context, index) {
           return patientlistwidget(
             item: PatientModel.items[index],
           );
           }
      ),
    );
  }
}