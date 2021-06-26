import 'package:flutter/material.dart';
import 'package:project_android/widgets/donelistwidget.dart';
import 'package:project_android/models/myappointments_model.dart';
import 'package:project_android/widgets/myappointmentlistwidget.dart';

class myappointment extends StatefulWidget {
  @override
  _myappointmentState createState() => _myappointmentState();
}
class _myappointmentState extends State<myappointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Appointments"),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
          itemCount: myappointmentModel.items4.length,
          itemBuilder: (context, index) {
            return myappointmentlistwidget(
              item4: myappointmentModel.items4[index],
            );
          }
      ),
    );
  }
}