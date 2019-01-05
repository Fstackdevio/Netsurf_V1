import 'package:flutter/material.dart';
import 'package:netsurf/models/FaqModel.dart';

class FaqList extends StatefulWidget {
  @override
  _FaqListState createState() => new _FaqListState();
}

class _FaqListState extends State<FaqList> {
  final List<FaqModel> data = faqData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ExpansionTile(
          title: Text(data[index].question),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: new Text(data[index].answer),
            )
          ],
        );
      },
    );
  }
}
