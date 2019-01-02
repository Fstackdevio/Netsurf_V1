import 'package:flutter/material.dart';
import 'package:netsurf/pages/buy_data.dart';
import 'package:netsurf/pages/change_password.dart';
import 'package:netsurf/pages/check_data.dart';
import 'package:netsurf/pages/login_history.dart';
import 'package:netsurf/pages/profile.dart';
import 'package:netsurf/pages/settings.dart';
import 'package:netsurf/pages/share_data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new SizedBox(
            height: 70.0,
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ProfileScreen()));
                    },
                    child: new Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          border: Border.all(
                              color: Colors.greenAccent,
                              style: BorderStyle.solid,
                              width: 3.0)),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 60.0,
                        child: new Icon(
                          Icons.person,
                          size: 50.0,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ),
                  ),
                  new SizedBox(
                    height: 10.0,
                  ),
                  new Text('Profile')
                ],
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CheckScreen()));
                    },
                    child: new Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          border: Border.all(
                              color: Colors.greenAccent,
                              style: BorderStyle.solid,
                              width: 3.0)),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 60.0,
                        child: new Icon(
                          Icons.insert_chart,
                          size: 50.0,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ),
                  ),
                  new SizedBox(
                    height: 10.0,
                  ),
                  new Text('Data Balance')
                ],
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => BuyScreen()));
                    },
                    child: new Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          border: Border.all(
                              color: Colors.greenAccent,
                              style: BorderStyle.solid,
                              width: 3.0)),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 60.0,
                        child: new Icon(
                          Icons.shopping_basket,
                          size: 50.0,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ),
                  ),
                  new SizedBox(
                    height: 10.0,
                  ),
                  new Text('Buy Data')
                ],
              ),
            ],
          ),
          new SizedBox(
            height: 90.0,
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ShareScreen()));
                    },
                    child: new Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          border: Border.all(
                              color: Colors.greenAccent,
                              style: BorderStyle.solid,
                              width: 3.0)),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 60.0,
                        child: new Icon(
                          Icons.favorite_border,
                          size: 50.0,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ),
                  ),
                  new SizedBox(
                    height: 10.0,
                  ),
                  new Text('Share Data')
                ],
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ChangeScreen()));
                    },
                    child: new Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          border: Border.all(
                              color: Colors.greenAccent,
                              style: BorderStyle.solid,
                              width: 3.0)),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 60.0,
                        child: new Icon(
                          Icons.lock,
                          size: 50.0,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ),
                  ),
                  new SizedBox(
                    height: 10.0,
                  ),
                  new Text('Change Password')
                ],
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SettingsScreen()));
                    },
                    child: new Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          border: Border.all(
                              color: Colors.greenAccent,
                              style: BorderStyle.solid,
                              width: 3.0)),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 60.0,
                        child: new Icon(Icons.settings,
                            size: 50.0, color: Colors.greenAccent),
                      ),
                    ),
                  ),
                  new SizedBox(
                    height: 10.0,
                  ),
                  new Text('Settings')
                ],
              ),
            ],
          ),
          new SizedBox(
            height: 90,
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginHistoryScreen()));
                    },
                    child: new Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          border: Border.all(
                              color: Colors.greenAccent,
                              style: BorderStyle.solid,
                              width: 3.0)),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 60.0,
                        child: new Icon(
                          Icons.vpn_lock,
                          size: 50.0,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ),
                  ),
                  new SizedBox(
                    height: 10.0,
                  ),
                  new Text('Login History')
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
