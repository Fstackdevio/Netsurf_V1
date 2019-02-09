import 'package:flutter/material.dart';

class UpdateScreen extends StatefulWidget {
  _UpdateScreenState createState() => new _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('App Updates'),
          elevation: 0.0,
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: new Center(
          child: new Text('App Update shows here...'),
        ));
  }
}
