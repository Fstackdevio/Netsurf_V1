import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  _ProfileScreenState createState() => new _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Widget build(BuildContext context){
    return new Scaffold(
      body: Center(
        child: Text('Profile'),
      ),
    );
  }
}