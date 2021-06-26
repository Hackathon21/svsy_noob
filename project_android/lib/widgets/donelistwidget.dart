import 'package:flutter/material.dart';
import 'package:project_android/models/doneappointments_model.dart';
import 'package:project_android/models/patientlist_model.dart';
class donelistwidget extends StatelessWidget {
  final Item2 item2;


  const donelistwidget({Key? key, required this.item2})
      :assert (item2!=null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lightGreen,
      child: ListTile(
        title:
        Text(item2.name),
        subtitle: Text(
            item2.age.toString()
                + ',  ' + item2.disease + '\n' + 'Done: ' + item2.date + '\n'
        ),

        trailing: Text(
          "DONE",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),

    );
  }


}