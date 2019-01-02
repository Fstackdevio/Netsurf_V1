import 'package:flutter/material.dart';

class ChangeScreen extends StatefulWidget {
  @override
  _ChangeScreenState createState() => new _ChangeScreenState();
}

class _ChangeScreenState extends State<ChangeScreen> {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: new Text('Change Password'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Change Password'),
      ),
    );
  }
}