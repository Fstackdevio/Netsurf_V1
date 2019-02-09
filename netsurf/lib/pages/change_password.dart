import 'dart:async';
import 'package:flutter/material.dart';
import 'package:netsurf/api/consumer.dart';
import 'package:netsurf/models/User.dart';
import 'package:netsurf/models/base/EventObject.dart';
import 'package:netsurf/tools/constants.dart';
import 'package:netsurf/tools/ui_tools.dart';
import 'package:netsurf/tools/app_pref.dart';

class ChangeScreen extends StatefulWidget {
  @override
  _ChangeScreenState createState() => new _ChangeScreenState();
}

class _ChangeScreenState extends State<ChangeScreen> {
  TextEditingController ctrlOldPass = new TextEditingController();
  TextEditingController ctrlNewPass = new TextEditingController();
  TextEditingController ctrlCNewPass = new TextEditingController();
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
        title: new Text('Change Password'),
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
            height: 680.0,
            width: double.infinity,
            child: new Card(
              child: new Column(
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                    child: Icon(
                      Icons.lock,
                      color: Colors.greenAccent,
                      size: 120.0,
                    ),
                  ),
                  new Text(
                    "Please fill in the form below \n to change your password",
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
                      controller: ctrlOldPass,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_open),
                          hintText: 'old password'),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 40.0, right: 40.0, top: 10.0, bottom: 10.0),
                    child: new TextField(
                      controller: ctrlNewPass,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_open),
                          hintText: 'new password'),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 40.0, right: 40.0, top: 10.0, bottom: 10.0),
                    child: new TextField(
                      controller: ctrlCNewPass,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_open),
                          hintText: 'confirm new password'),
                    ),
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
                            child: const Text("submit"),
                            elevation: 4.0,
                            onPressed: () {
                              _changePass();
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

  _changePass() async {
    if (ctrlCNewPass.text.trim().isNotEmpty !=
        ctrlNewPass.text.trim().isNotEmpty) {
      showSnackBar("New password don't match!", Colors.red[600], scaffoldKey);
      return;
    }
    if (user.username.isEmpty &&
        ctrlPin.text.trim().isEmpty &&
        ctrlOldPass.text.trim().isEmpty &&
        ctrlNewPass.text.trim().isEmpty &&
        ctrlCNewPass.text.trim().isEmpty) {
      showSnackBar("All fields are required!", Colors.red[600], scaffoldKey);
      return;
    }
    if (user.username.isEmpty &&
        ctrlPin.text.trim().isNotEmpty &&
        ctrlOldPass.text.trim().isNotEmpty &&
        ctrlNewPass.text.trim().isNotEmpty &&
        ctrlCNewPass.text.trim().isNotEmpty) {
      showSnackBar("Username is required!", Colors.red[600], scaffoldKey);
      return;
    }
    if (user.username.isNotEmpty &&
        ctrlPin.text.trim().isEmpty &&
        ctrlOldPass.text.trim().isNotEmpty &&
        ctrlNewPass.text.trim().isNotEmpty &&
        ctrlCNewPass.text.trim().isNotEmpty) {
      showSnackBar("Pin is required!", Colors.red[600], scaffoldKey);
      return;
    }
    if (user.username.isNotEmpty &&
        ctrlPin.text.trim().isNotEmpty &&
        ctrlOldPass.text.trim().isEmpty &&
        ctrlNewPass.text.trim().isNotEmpty &&
        ctrlCNewPass.text.trim().isNotEmpty) {
      showSnackBar(
          "Current password is required!", Colors.red[600], scaffoldKey);
      return;
    }
    if (user.username.isNotEmpty &&
        ctrlPin.text.trim().isNotEmpty &&
        ctrlOldPass.text.trim().isNotEmpty &&
        ctrlNewPass.text.trim().isEmpty &&
        ctrlCNewPass.text.trim().isNotEmpty) {
      showSnackBar("New password is required!", Colors.red[600], scaffoldKey);
      return;
    }

    displayProgressDialog(context);

    EventObject eventObject = await changePassword(
        user.username, ctrlOldPass.text, ctrlNewPass.text, ctrlPin.text);
    switch (eventObject.id) {
      case EventConstants.CHANGE_SUCCESSFUL:
        {
          setState(() {
            ctrlOldPass.text = "";
            ctrlNewPass.text = "";
            ctrlCNewPass.text = "";
            ctrlPin.text = "";
            closeProgressDialog(context);
            showSnackBar("Password Changed Successfully", Colors.green[600],
                scaffoldKey);
            return;
          });
        }
        break;
      case EventConstants.CHANGE_ERR:
        {
          setState(() {
            ctrlOldPass.text = "";
            ctrlNewPass.text = "";
            ctrlCNewPass.text = "";
            ctrlPin.text = "";
            closeProgressDialog(context);
            showSnackBar(
                "Password Change Unsuccessful", Colors.red[600], scaffoldKey);
            return;
          });
        }
        break;
      case EventConstants.INVALID_OLD_PASS:
        {
          setState(() {
            ctrlOldPass.text = "";
            ctrlNewPass.text = "";
            ctrlCNewPass.text = "";
            ctrlPin.text = "";
            closeProgressDialog(context);
            showSnackBar(
                "Old Password Doesn't Match!", Colors.red[600], scaffoldKey);
            return;
          });
        }
        break;
      case EventConstants.NO_INTERNET:
        {
          setState(() {
            ctrlOldPass.text = "";
            ctrlNewPass.text = "";
            ctrlCNewPass.text = "";
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
