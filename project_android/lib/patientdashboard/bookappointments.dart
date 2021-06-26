import 'package:flutter/material.dart';
import 'package:project_android/widgets/donelistwidget.dart';
import 'package:project_android/models/myappointments_model.dart';
import 'package:project_android/widgets/myappointmentlistwidget.dart';

class book extends StatefulWidget {
  @override
  _bookState createState() => _bookState();
}
class _bookState extends State<book> {
  String valueChoose= "Cardiologist";
  String valueChoose2= "Lucknow";
  List listitem1= [
    "Heart specialist", "Surgeon", "Dental Specialist", "Skin and Hair Specialist", "Cardiologist", "ENT Speialist",
     "Gynaecologist", "Paedeatrician", "Psychiatrist", "Veterenarian", "Neurologist"
  ];
  List listitem2= [
    "Lucknow", "New Delhi", "Mumbai", "Bangalore", "Pune", "Noida", "Hyderabad", "Ahemdabad", "Chennai", "Kolkata",
    "Surat", "Patna", "Agra", "Varanasi", "Gwalior", "Amritsar", "Jabalpur", "Raipur", "Chandigarh", "Gwahati",
    "Jammu"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book"),
        backgroundColor: Colors.green,
      ),
     body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
               margin: EdgeInsets.only(top: 40),
              child: DropdownButton(
             hint: Text("Select field"),
             dropdownColor: Colors.white,
             icon: Icon(Icons.arrow_drop_down),
             iconSize: 36,
             value: valueChoose,
             onChanged: (newValue) {
               setState(() {
                 valueChoose= newValue.toString();
               }
               );
             },
             items: listitem1.map((valueItem){
               return DropdownMenuItem(
                 value:valueItem,
                 child: Text(valueItem,
                     style:TextStyle(color: Colors.green),
                 ),
               );
             }
             ).toList(),
       ),
     ),
             Container(
            margin: EdgeInsets.only(top: 20),
               child: DropdownButton(
                 hint: Text("Select city"),
                 dropdownColor: Colors.white,
                 icon: Icon(Icons.arrow_drop_down),
                 iconSize: 36,
                 value: valueChoose2,
                 onChanged: (newValue) {
                   setState(() {
                     valueChoose2= newValue.toString();
                   }
                   );
                 },
                 items: listitem2.map((valueItem2){
                   return DropdownMenuItem(
                     value:valueItem2,
                     child: Text(valueItem2,
                     style:TextStyle(color: Colors.green),
                     )
                   );
                 }
                 ).toList(),
               )
             ),

            SizedBox(
              height: 25.0,
            ),
            Container(
              margin: EdgeInsets.only(top: 20, right: 10, left: 10),
              width: double.infinity,
              child: FlatButton(
                color: Colors.green,
                onPressed: () {},
                child: Text(
                  'Search for a Doctor',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
    ],
        ),
     ),
     );
  }
}