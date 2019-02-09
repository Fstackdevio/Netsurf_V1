import 'package:flutter/material.dart';
import 'package:netsurf/tools/faq_list.dart';

class FaqScreen extends StatefulWidget {
  @override
  _FaqScreenState createState() => new _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: new Text('FAQ'),
        centerTitle: true,
      ),
      body: new Padding(
        padding: const EdgeInsets.all(8.0),
        child: FaqList(),
      )
    );
  }
}

// class TopFaq extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100.0,
//       child: new Center(
//         child: new Text(
//           'Most Frequently Asked Questions',
//           style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey),
//         ),
//       ),
//     );
//   }
// }

// class BottomFaq extends StatefulWidget {
//   @override
//   _BottomFaqState createState() => new _BottomFaqState();
// }

// class _BottomFaqState extends State<BottomFaq> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: FaqList(),
//     );
//   }
// }
