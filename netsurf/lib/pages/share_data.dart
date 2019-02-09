import 'dart:async';
import 'package:flutter/material.dart';
import 'package:netsurf/api/consumer.dart';
import 'package:netsurf/models/base/EventObject.dart';
import 'package:netsurf/tools/constants.dart';
import 'package:netsurf/tools/ui_tools.dart';

class ShareScreen extends StatefulWidget {
  @override
  _ShareScreenState createState() => new _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  TextEditingController ctrlUsername = new TextEditingController();
  TextEditingController ctrlAmount = new TextEditingController();
  TextEditingController ctrlPin = new TextEditingController();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return new Scaffold(
      key: scaffoldKey,
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: new Text('Share Data'),
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
            height: 500.0,
            width: double.infinity,
            child: new Card(
              child: new Column(
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.greenAccent,
                      size: 120.0,
                    ),
                  ),
                  new Text(
                    "Please fill in the form below to share data",
                    style: new TextStyle(fontWeight: FontWeight.w300),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 40.0, right: 40.0, top: 40.0, bottom: 10.0),
                    child: new TextField(
                      controller: ctrlUsername,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline),
                          hintText: 'john.doe'),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 40.0, right: 40.0, top: 10.0, bottom: 10.0),
                    child: new TextField(
                      controller: ctrlAmount,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.clear_all), hintText: '100'),
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
                            child: const Text("share"),
                            elevation: 4.0,
                            onPressed: () {
                              _shareData();
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

  _shareData() async {
    if (ctrlUsername.text.trim().isEmpty &&
        ctrlAmount.text.trim().isEmpty &&
        ctrlPin.text.trim().isEmpty) {
      showSnackBar("All fields are required!", Colors.red[600], scaffoldKey);
      return;
    }
    if (ctrlUsername.text.trim().isEmpty &&
        ctrlAmount.text.trim().isNotEmpty &&
        ctrlPin.text.trim().isNotEmpty) {
      showSnackBar("Username is required", Colors.red[600], scaffoldKey);
      return;
    }
    if (ctrlAmount.text.trim().isNotEmpty &&
        ctrlAmount.text.trim().isEmpty &&
        ctrlPin.text.trim().isNotEmpty) {
      showSnackBar("Data amount is required", Colors.red[600], scaffoldKey);
      return;
    }
    if (ctrlUsername.text.trim().isNotEmpty &&
        ctrlAmount.text.trim().isNotEmpty &&
        ctrlPin.text.trim().isEmpty) {
      showSnackBar("Pin is required", Colors.red[600], scaffoldKey);
      return;
    }

    displayProgressDialog(context);

    EventObject eventObject =
        await shareData(ctrlUsername.text, ctrlAmount.text, ctrlPin.text);
    switch (eventObject.id) {
      case EventConstants.SHARE_SUCCESSFUL:
        {
          setState(() {
            ctrlUsername.text = "";
            ctrlAmount.text = "";
            ctrlPin.text = "";
            closeProgressDialog(context);
            showSnackBar(
                "Data Sent Successfully", Colors.green[600], scaffoldKey);
            return;
          });
        }
        break;
      case EventConstants.SHARE_ERR:
        {
          setState(() {
            ctrlUsername.text = "";
            ctrlAmount.text = "";
            ctrlPin.text = "";
            closeProgressDialog(context);
            showSnackBar("Data Share Error", Colors.red[600], scaffoldKey);
            return;
          });
        }
        break;
      case EventConstants.NO_INTERNET:
        {
          setState(() {
            ctrlUsername.text = "";
            ctrlAmount.text = "";
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
