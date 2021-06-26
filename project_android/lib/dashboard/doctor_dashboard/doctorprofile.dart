import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project_android/doctor_dashboard/contactus.dart';
import 'package:project_android/doctor_dashboard/help.dart';
import 'package:project_android/login/firstscreen.dart';
import 'package:project_android/models/doctorprofile_model.dart';

class doctorprofile extends StatefulWidget {
  @override
  _doctorprofileState createState() => _doctorprofileState();
}

class _doctorprofileState extends State<doctorprofile> {
  late final Item3 item3;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
    Scaffold(
      appBar: AppBar(
    title: Text("Profile"),
    backgroundColor: Colors.green,
    ),
    backgroundColor: Colors.white,
        body: SingleChildScrollView(
         child: Column(
         children: [
           InkWell(
           child: Container(
               margin: EdgeInsets.all(20),
                   height: 180,
                   width: 600,
                   decoration: BoxDecoration(
                       border: Border.all(
                         color: Colors.green,
                       ),
                       borderRadius: BorderRadius.all(Radius.circular(20))
                   ),

                   child: Padding(
                     padding: const EdgeInsets.all(16.0),
                             child: Text(
                        'Dr.'+ 'Yaju Yadav' + '\n' + '\n' +
                          'Working as: Cardiologist' + '\n' + '\n'
                             + 'PGI hospital' + ', ' + 'Lucknow',
                         style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 20),
                       ),

                   ),
             ),
           ),
           InkWell(
             child: Container(
               margin: EdgeInsets.all(5),
               height: 60,
               width: 600,
               decoration: BoxDecoration(
                color: Colors.blueGrey,

               ),

               child: Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Text(
                   'Edit-profile',
                   style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
                 ),
               ),
             ),
             onTap: () {
               Navigator.pushAndRemoveUntil(
                   context,
                   MaterialPageRoute(builder: (context) => firstScreen()),
                       (route) => false);
             },
           ),
           InkWell(
             child: Container(
               margin: EdgeInsets.all(5),
               height: 60,
               width: 600,
               decoration: BoxDecoration(
                 color: Colors.blueGrey,

               ),
               child: Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Text(
                   'Contact Us',
                   style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
                 ),
               ),
             ),
             onTap: () {
               Navigator.pushAndRemoveUntil(
                   context,
                   MaterialPageRoute(builder: (context) => contactus()),
                       (route) => false);
             },
           ),
           InkWell(
             child: Container(
               margin: EdgeInsets.all(5),
               height: 60,
               width: 600,
               decoration: BoxDecoration(
                 color: Colors.blueGrey,

               ),

               child: Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Text(
                   'Help',
                   style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
                 ),
               ),
             ),
             onTap: () {
               Navigator.pushAndRemoveUntil(
                   context,
                   MaterialPageRoute(builder: (context) => help()),
                       (route) => false);
             },
           ),
           InkWell(
             child: Container(
               margin: EdgeInsets.all(5),
               height: 60,
               width: 600,
               decoration: BoxDecoration(
                 color: Colors.blueGrey,

               ),

               child: Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Text(
                   'Logout',
                   style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
                 ),
               ),
             ),
             onTap: () {
               Navigator.pushAndRemoveUntil(
                   context,
                   MaterialPageRoute(builder: (context) => firstScreen()),
                       (route) => false);
             },
           )
      ]
               )

         ),
    ),

    ]
    );
  }
}