import 'package:flutter/material.dart';
import 'package:project_android/models/patientlist_model.dart';
class patientlistwidget extends StatelessWidget {
  final Item item;

  const patientlistwidget({Key? key, required this.item})
  :assert (item!=null),
  super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.lightGreen,
        child: ListTile(
          title:
         Text(item.name),
          subtitle: Text(
            item.age.toString()
            + ',  ' + item.disease + '\n' + 'Scheduled: ' + item.date + '\n'
          ),

          trailing: Text(
            "CANCEL",
                style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),

    );
  }


}