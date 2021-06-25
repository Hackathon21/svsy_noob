import 'package:flutter/material.dart';


import 'package:flutter/material.dart';
import 'package:project_android/dashboard/patientdashboard.dart';
import 'package:project_android/login/patientlogin.dart';

class patientsignupscreen extends StatefulWidget {
  @override
  _patientsignupscreenState createState() => _patientsignupscreenState();
}

class _patientsignupscreenState extends State<patientsignupscreen> {
  final _formkey= GlobalKey<FormState>();
  moveToScreen(BuildContext context) {
    if (_formkey.currentState!.validate()) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => patientdashboard()),
              (route) => false);
    }
  }

  TextEditingController _controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Scaffold(
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                child: Form(
                  key: _formkey,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Column(children: [
                      Container(
                        margin: EdgeInsets.only(top: 60,right: 10, left: 10),
                        child: Center(
                          child: Text( 'Register here to continue',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, color: Colors.green),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40, right: 10, left: 10),
                        child: TextFormField(
                            style: TextStyle(color: Colors.green),
                            decoration: InputDecoration(
                              hintText: 'Enter E-mail',
                              labelText: 'E-mail',
                              hintStyle: TextStyle(color: Colors.green),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green, width: 2.0),
                              ),
                              labelStyle: TextStyle(color: Colors.green),
                              prefix: Padding(
                                padding: EdgeInsets.all(4),
                              ),
                            ),
                            // controller: _controller,
                            validator: (value){
                              if(value!.isEmpty) {
                                return "E-mail is not entered";
                              }
                              return null;
                            }
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40, right: 10, left: 10),
                        child: TextFormField(
                            obscureText: true,
                            style: TextStyle(color: Colors.green),
                            decoration: InputDecoration(
                              hintText: 'Enter Password',
                              labelText: 'Password',
                              hintStyle: TextStyle(color: Colors.green),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green, width: 2.0),
                              ),
                              labelStyle: TextStyle(color: Colors.green),
                              prefix: Padding(
                                padding: EdgeInsets.all(4),
                              ),
                            ),
                            //  controller: _controller,
                            validator: (value){
                              if(value!.isEmpty) {
                                return "Password is not entered";
                              }
                              return null;
                            }
                        ),
                      ),
                      // ],),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: double.infinity,
                        child: FlatButton(
                          color: Colors.green,
                          onPressed: () => moveToScreen(context),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40, right: 10, left: 10),
                        child: Text(
                            'Already have an account?',
                            style: TextStyle(color: Colors.green, fontSize: 20)
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: double.infinity,
                        child: FlatButton(
                          color: Colors.green,
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(builder: (context) => patientloginscreen()),
                                    (route) => false);
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                        ),
                      ),
                    ], ),
                ),
              )
          ),

        ]

    );
  }


}
