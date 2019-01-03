import 'package:flutter/material.dart';
import 'package:netsurf/pages/login.dart';
import 'package:netsurf/pages/share_history.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => new _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          elevation: 0.0,
          backgroundColor: Colors.green,
          title: new Text('Settings'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: new Column(
            children: <Widget>[TopSettings(), BottomSettings()],
          ),
        ));
  }
}

class TopSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        new Container(
          color: Colors.greenAccent,
          height: MediaQuery.of(context).size.height / 4,
          child: new Center(
            child: new Padding(
              padding: const EdgeInsets.all(10.0),
              child: new Material(
                elevation: 3.0,
                borderRadius: BorderRadius.circular(100.0),
                child: new Container(
                  child: new CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 100.0,
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Icon(
                          Icons.info,
                          color: Colors.green,
                          size: 60.0,
                        ),
                        new SizedBox(height: 10.0),
                        new Text('V 1.0.0')
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class BottomSettings extends StatefulWidget {
  @override
  _BottomSettingsState createState() => new _BottomSettingsState();
}

class _BottomSettingsState extends State<BottomSettings> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new SizedBox(
              height: 50.0,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new InkWell(
                  onTap: () {},
                  child: Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(color: Colors.grey),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Icon(
                          Icons.cloud_done,
                          color: Colors.white,
                          size: 100.0,
                        ),
                        new SizedBox(height: 10.0),
                        new Text('Check For Updates')
                      ],
                    ),
                  ),
                ),
                new InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ShareHistoryScreen()));
                  },
                  child: Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(color: Colors.grey),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Icon(
                          Icons.swap_vertical_circle,
                          color: Colors.white,
                          size: 100.0,
                        ),
                        new SizedBox(height: 10.0),
                        new Text('Data Share History')
                      ],
                    ),
                  ),
                ),
                new InkWell(
                  onTap: () {},
                  child: Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(color: Colors.grey),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.clear_all,
                            color: Colors.white,
                            size: 100.0,
                          ),
                          new SizedBox(height: 10.0),
                          new Text('Clear The Cache')
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            new SizedBox(
              height: 50.0,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new InkWell(
                  onTap: () {},
                  child: Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(color: Colors.grey),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Icon(
                          Icons.language,
                          color: Colors.white,
                          size: 100.0,
                        ),
                        new SizedBox(height: 10.0),
                        new Text('Disconnect Globally')
                      ],
                    ),
                  ),
                ),
                new InkWell(
                  onTap: () {},
                  child: Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(color: Colors.grey),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 100.0,
                        ),
                        new SizedBox(height: 10.0),
                        new Text('Push Notifications')
                      ],
                    ),
                  ),
                ),
                new InkWell(
                  onTap: () {},
                  child: Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(color: Colors.grey),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.assignment,
                            color: Colors.white,
                            size: 100.0,
                          ),
                          new SizedBox(height: 10.0),
                          new Text('FAQs')
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            new SizedBox(
              height: 50.0,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new InkWell(
                  onTap: () {},
                  child: Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(color: Colors.grey),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Icon(
                          Icons.bug_report,
                          color: Colors.white,
                          size: 100.0,
                        ),
                        new SizedBox(height: 10.0),
                        new Text('About The App')
                      ],
                    ),
                  ),
                ),
                new InkWell(
                  onTap: () {},
                  child: Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(color: Colors.grey),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Icon(
                          Icons.thumbs_up_down,
                          color: Colors.white,
                          size: 100.0,
                        ),
                        new SizedBox(height: 10.0),
                        new Text('Feedback')
                      ],
                    ),
                  ),
                ),
                new InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(color: Colors.grey),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.power_settings_new,
                            color: Colors.white,
                            size: 100.0,
                          ),
                          new SizedBox(height: 10.0),
                          new Text('Logout')
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
