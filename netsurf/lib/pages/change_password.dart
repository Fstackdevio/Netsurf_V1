import 'package:flutter/material.dart';

class ChangeScreen extends StatefulWidget {
  _ChangeScreenState createState() => new _ChangeScreenState();
}

class _ChangeScreenState extends State<ChangeScreen> {
  Widget build(BuildContext context){
    return new Scaffold(
      body: Center(
        child: Text('Change Password'),
      ),
    );
  }
}