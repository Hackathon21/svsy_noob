import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class help extends StatefulWidget {
  @override
  _helpState createState() => _helpState();
}

class _helpState extends State<help> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
            padding: const EdgeInsets.only(top: 60, right: 10, left: 10),
            child: Text(
                'Tell us what do you need help with?' +'\n'
            )
        )
    );
  }

}