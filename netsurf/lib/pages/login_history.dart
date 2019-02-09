import 'package:flutter/material.dart';
import 'package:netsurf/tools/trans_card.dart';

class LoginHistoryScreen extends StatefulWidget {
  @override
  _LoginHistoryScreenState createState() => new _LoginHistoryScreenState();
}

class _LoginHistoryScreenState extends State<LoginHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          elevation: 0.0,
          backgroundColor: Colors.green,
          title: new Text('Login History'),
          centerTitle: true,
        ),
        body: HistoryCard(),
    );
  }
}

// class TopLoginHistory extends StatefulWidget {
//   @override
//   _TopLoginHistoryState createState() => new _TopLoginHistoryState();
// }

// class _TopLoginHistoryState extends State<TopLoginHistory> {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: <Widget>[
//         new Container(
//           color: Colors.greenAccent,
//           height: MediaQuery.of(context).size.height / 3,
//           child: new Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               new Center(
//                 child: new Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: new Material(
//                     elevation: 6.0,
//                     borderRadius: BorderRadius.circular(80.0),
//                     child: new Container(
//                       child: new CircleAvatar(
//                         backgroundColor: Colors.white,
//                         radius: 80.0,
//                         child: new Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: <Widget>[
//                             new Text('January 25,',
//                                 style: TextStyle(
//                                   fontSize: 25.0,
//                                 )),
//                             new SizedBox(height: 10.0),
//                             new Text(
//                               '2019',
//                               style: TextStyle(fontSize: 27.0),
//                             ),
//                             new SizedBox(
//                               height: 10.0,
//                             ),
//                             new Text('03:12')
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               new Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   IconButton(
//                     icon: Icon(Icons.filter_list),
//                     color: Colors.white,
//                     iconSize: 30.0,
//                     onPressed: () {},
//                   ),
//                   IconButton(
//                     icon: Icon(Icons.error),
//                     color: Colors.white,
//                     iconSize: 30.0,
//                     onPressed: () {},
//                   )
//                 ],
//               )
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }

// class BottomLoginHistory extends StatefulWidget {
//   @override
//   _BottomLoginHistoryState createState() => new _BottomLoginHistoryState();
// }

// class _BottomLoginHistoryState extends State<BottomLoginHistory> {
//   @override
//   Widget build(BuildContext context) {
//     return HistoryCard();
//   }
// }
