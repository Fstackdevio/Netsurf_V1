import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  _SettingsScreenState createState() => new _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Widget build(BuildContext context){
    return new Scaffold(
      body: Center(
        child: Text('Settings'),
      ),
    );
  }
}