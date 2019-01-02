import 'package:flutter/material.dart';
import 'package:netsurf/pages/ewallet.dart';
import 'package:netsurf/pages/home.dart';

class WrapperScreen extends StatefulWidget {
  _WrapperScreenState createState() => new _WrapperScreenState();
}

class _WrapperScreenState extends State<WrapperScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(initialIndex: 0, length: 2, vsync: this);
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: Text(
          'Netsurf',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          tabs: <Widget>[
            Tab(
              text: 'Home',
            ),
            Tab(
              text: 'E-Wallet',
            )
          ],
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[HomeScreen(), EwalletScreen()],
      ),
    );
  }
}
