import 'package:flutter/material.dart';
import 'package:project_android/models/doneappointments_model.dart';
import 'package:project_android/models/myappointments_model.dart';
import 'package:project_android/models/patientlist_model.dart';
class myappointmentlistwidget extends StatelessWidget {
  final Item4 item4;


  const myappointmentlistwidget({Key? key, required this.item4})
      :assert (item4!=null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lightGreen,
      child: ListTile(
        title:
        Text(item4.name + ', ' + item4.field) ,
        subtitle: Text(
            item4.hospital
                + ',  ' + item4.city + '\n' + 'Done: ' + item4.date + '\n'
        ),

        trailing: Text(
          "DONE",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),

    );
  }


}