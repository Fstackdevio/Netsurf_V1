import 'package:flutter/material.dart';

class BuyScreen extends StatefulWidget {
  _BuyScreenState createState() => new _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: new Text('Buy Data'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Buy Data'),
      ),
    );
  }
}