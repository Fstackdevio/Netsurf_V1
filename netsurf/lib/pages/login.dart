import 'package:flutter/material.dart';
import 'package:netsurf/pages/wrapper.dart';

class LoginScreen extends StatefulWidget {
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new SingleChildScrollView(
            child: new Column(
      children: <Widget>[TopLogin(), BottomLogin()],
    )));
  }
}

class TopLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 2,
          color: Colors.green,
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon(Icons.public, size: 150.0, color: Colors.white),
                new Text(
                  'Netsurf',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class BottomLogin extends StatefulWidget {
  @override
  _BottomLoginState createState() => new _BottomLoginState();
}

class _BottomLoginState extends State<BottomLogin> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        new Container(
          child: new Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    left: 40.0, right: 40.0, top: 60.0, bottom: 10.0),
                child: new TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_outline),
                      hintText: 'Username'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 40.0, right: 40.0, top: 20.0, bottom: 50.0),
                child: new TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: Icon(Icons.visibility),
                      hintText: 'Password'),
                ),
              ),
              RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => WrapperScreen()));
                  },
                  color: Colors.green,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.all(
                      new Radius.circular(30.0),
                    ),
                  ),
                  child: new Container(
                    alignment: AlignmentDirectional.center,
                    width: 200.0,
                    height: 60.0,
                    child: new Text(
                      'Login',
                      style: new TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.3,
                        color: Colors.white,
                      ),
                    ),
                  )),
              SizedBox(
                height: 30.0,
              )
            ],
          ),
        )
      ],
    );
  }
}
