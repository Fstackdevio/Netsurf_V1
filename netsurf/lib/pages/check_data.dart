import 'dart:async';
import 'package:flutter/material.dart';
import 'package:netsurf/api/consumer.dart';
import 'package:netsurf/models/User.dart';
import 'package:netsurf/models/base/EventObject.dart';
import 'package:netsurf/tools/app_pref.dart';
import 'package:netsurf/tools/constants.dart';
import 'package:netsurf/tools/ui_tools.dart';

class CheckScreen extends StatefulWidget {
  @override
  _CheckScreenState createState() => new _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  TextEditingController ctrlPin = new TextEditingController();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  User user;
  BuildContext context;

  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();
    if (user == null) {
      await initUserProfile();
    }
  }

  Future<void> initUserProfile() async {
    User up = await AppSharedPref.getUserProfile();
    setState(() {
      user = up;
    });
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return new Scaffold(
      key: scaffoldKey,
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: new Text('Check Balance'),
        centerTitle: true,
      ),
      body: Center(
        child: new SingleChildScrollView(
            child: new Container(
          padding: EdgeInsets.only(
            left: 10.0,
            right: 10.0,
          ),
          child: new SizedBox(
            height: 450.0,
            width: double.infinity,
            child: new Card(
              child: new Column(
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                    child: Icon(
                      Icons.insert_chart,
                      color: Colors.greenAccent,
                      size: 120.0,
                    ),
                  ),
                  new Text(
                    "Please fill in the form below \n to check your data balance",
                    style: new TextStyle(fontWeight: FontWeight.w300),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 40.0, right: 40.0, top: 40.0, bottom: 10.0),
                    child:
                        new Text(((user == null) ? 'username' : user.username)),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 40.0, right: 40.0, top: 10.0, bottom: 10.0),
                    child: new TextField(
                      controller: ctrlPin,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_open),
                          hintText: 'secret pin'),
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: new Center(
                        child: new RaisedButton(
                            child: const Text("check"),
                            elevation: 4.0,
                            onPressed: () {
                              _checkData();
                            },
                            splashColor: Colors.green)),
                  )
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }

  _checkData() async {
    if (user.username.isEmpty && ctrlPin.text.trim().isEmpty) {
      showSnackBar("Both fields are required!", Colors.red[600], scaffoldKey);
      return;
    }
    if (user.username.isEmpty && ctrlPin.text.trim().isNotEmpty) {
      showSnackBar("Username is required", Colors.red[600], scaffoldKey);
      return;
    }
    if (user.username.isNotEmpty && ctrlPin.text.trim().isEmpty) {
      showSnackBar("Pin is required", Colors.red[600], scaffoldKey);
      return;
    }

    displayProgressDialog(context);

    EventObject eventObject = await checkData(user.username, ctrlPin.text);
    switch (eventObject.id) {
      case EventConstants.CHECK_SUCCESSFUL:
        {
          setState(() {
            ctrlPin.text = "";
            closeProgressDialog(context);
            showSnackBar(
                "Data Balance is balance", Colors.green[600], scaffoldKey);
            return;
          });
        }
        break;
      case EventConstants.CHECK_ERR:
        {
          setState(() {
            ctrlPin.text = "";
            closeProgressDialog(context);
            showSnackBar(
                "Error In Getting Data Balance", Colors.red[600], scaffoldKey);
            return;
          });
        }
        break;
      case EventConstants.NO_INTERNET:
        {
          setState(() {
            ctrlPin.text = "";
            closeProgressDialog(context);
            showSnackBar(
                "No Internet Connection", Colors.red[600], scaffoldKey);
            return;
          });
        }
        break;
    }
  }
}
