import 'package:flutter/material.dart';
import 'package:netsurf/models/User.dart';
import 'package:netsurf/tools/app_pref.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => new _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  User user;

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
    return new Scaffold(
        appBar: new AppBar(
          elevation: 0.0,
          backgroundColor: Colors.green,
          title: new Text('Profile'),
          centerTitle: true,
        ),
        body: Stack(
          children: <Widget>[
            Container(
              height: 350.0,
              width: double.infinity,
            ),
            Container(
              height: 200.0,
              width: double.infinity,
              color: Colors.green,
            ),
            Positioned(
              top: 125.0,
              left: 15.0,
              right: 15.0,
              child: Material(
                elevation: 3.0,
                borderRadius: BorderRadius.circular(7.0),
                child: new Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: 125.0,
              left: (MediaQuery.of(context).size.width - 2 / 50.0),
              child: new Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    border: Border.all(color: Colors.white, width: 2.0),
                    image: DecorationImage(
                        image: NetworkImage(user.avatar), fit: BoxFit.cover)),
              ),
            ),
            Positioned(
                top: 190.0,
                left: (MediaQuery.of(context).size.width - 2) / 105.0,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      ((user == null) ? 'Name' : 'Name : ' + user.name),
                      style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      ((user == null) ? 'E-Mail' : 'E-Mail : ' + user.email),
                      style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 17.0,
                          color: Colors.blueGrey),
                    )
                  ],
                ))
          ],
        ));
  }
}
