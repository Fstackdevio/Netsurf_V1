import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  _SettingsScreenState createState() => new _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: new Text('Settings'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Settings'),
      ),
    );
  }
}