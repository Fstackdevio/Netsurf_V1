import 'package:flutter/material.dart';

class ShareScreen extends StatefulWidget {
  _ShareScreenState createState() => new _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: new Text('Share Data'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Share Data'),
      ),
    );
  }
}