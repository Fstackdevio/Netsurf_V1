import 'package:flutter/material.dart';
import 'package:netsurf/models/LoginHistoryModel.dart';

class HistoryCard extends StatefulWidget {
  @override
  _HistoryCardState createState() => new _HistoryCardState();
}

class _HistoryCardState extends State<HistoryCard> {
  final List<LoginHistoryModel> data = historyData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 3.0,
            child: new Padding(
              padding: const EdgeInsets.all(10.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Expanded(
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Icon(
                          Icons.access_time,
                          color: Colors.blue,
                        ),
                        new Text(data[index].timeStamp)
                      ],
                    ),
                  ),
                  new Expanded(
                    child: new Container(),
                  ),
                  new Expanded(
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text(data[index].location,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey)),
                        new Icon(
                          Icons.place,
                          color: Colors.blue,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
