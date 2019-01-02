import 'package:flutter/material.dart';

class LoginHistoryScreen extends StatefulWidget {
  @override
  _LoginHistoryScreenState createState() => new _LoginHistoryScreenState();
}

class _LoginHistoryScreenState extends State<LoginHistoryScreen> {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: new Text('Login History'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Login History'),
      ),
    );
  }
}