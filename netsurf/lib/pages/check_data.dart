import 'package:flutter/material.dart';

class CheckScreen extends StatefulWidget {
  _CheckScreenState createState() => new _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: new Text('Data Balance'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Data Balance'),
      ),
    );
  }
}