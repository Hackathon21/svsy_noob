import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project_android/login/wrapper.dart';

import 'login/firstscreen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return wrapper();
  }}