import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class contactus extends StatefulWidget {
  @override
  _contactusState createState() => _contactusState();
}

class _contactusState extends State<contactus> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
        padding: const EdgeInsets.only(top: 60, right: 10, left: 10),
           child: Text(
            'feel free to contact our team: ' + '\n'
             + '+91-665-544-3782' + '\n'
                + '+91-665-544-3782' + '\n'
                + '+91-665-544-3782' + '\n'
                + '+91-665-544-3782' + '\n'
                + '+91-665-544-3782' + '\n' +'\n'
                + 'or write to us @' + '\n'
                + 'yajuyadavv@gmail.com' + '\n'
                + '1900300100252@ipec.org.in' + '\n'
                + 'teamMedics@gmail.com' + '\n'
                + 'healthapplication@gmail.com' + '\n'
             )
        )
    );
  }

}
