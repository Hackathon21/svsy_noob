import 'package:flutter/material.dart';
import 'package:project_android/widgets/donelistwidget.dart';
import 'package:project_android/models/doneappointments_model.dart';

class done extends StatefulWidget {
  @override
  _doneState createState() => _doneState();
}
class _doneState extends State<done> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Done Appointments"),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
          itemCount: doneModel.items2.length,
          itemBuilder: (context, index) {
            return donelistwidget(
              item2: doneModel.items2[index],
            );
          }
      ),
    );
  }
}