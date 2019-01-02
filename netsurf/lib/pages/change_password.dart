import 'package:flutter/material.dart';

class ChangeScreen extends StatefulWidget {
  @override
  _ChangeScreenState createState() => new _ChangeScreenState();
}

class _ChangeScreenState extends State<ChangeScreen> {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
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
                    child: new TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline),
                          hintText: 'john.doe'),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 40.0, right: 40.0, top: 10.0, bottom: 10.0),
                    child: new TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_open),
                          hintText: 'old password'),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 40.0, right: 40.0, top: 10.0, bottom: 10.0),
                    child: new TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_open),
                          hintText: 'new password'),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 40.0, right: 40.0, top: 10.0, bottom: 10.0),
                    child: new TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_open),
                          hintText: 'confirm new password'),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 40.0, right: 40.0, top: 10.0, bottom: 10.0),
                    child: new TextField(
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
                      onPressed: () => null,
                      splashColor: Colors.green
                    )),
                  )
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}