import 'package:flutter/material.dart';

class BuyScreen extends StatefulWidget {
  @override
  _BuyScreenState createState() => new _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: new Text('Buy Data'),
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
            height: 600.0,
            width: double.infinity,
            child: new Card(
              child: new Column(
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                    child: Icon(
                      Icons.shopping_basket,
                      color: Colors.greenAccent,
                      size: 120.0,
                    ),
                  ),
                  new Text(
                    "Please fill in the form below \n to top-up your data balance",
                    style: new TextStyle(fontWeight: FontWeight.w300),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 40.0, right: 40.0, top: 40.0, bottom: 10.0),
                    child: new TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.credit_card),
                          hintText: 'E-Wallet Account Number'),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 40.0, right: 40.0, top: 10.0, bottom: 10.0),
                    child: new TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_add),
                          hintText: 'Username'),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 40.0, right: 40.0, top: 10.0, bottom: 10.0),
                    child: new TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.clear_all),
                          suffixIcon: Icon(Icons.expand_more),
                          hintText: 'Amount'),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 40.0, right: 40.0, top: 10.0, bottom: 10.0),
                    child: new TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Secret Pin or E-Wallet Pin'),
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: new Center(
                        child: new RaisedButton(
                            child: const Text("purchase"),
                            elevation: 4.0,
                            onPressed: () => null,
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
}
