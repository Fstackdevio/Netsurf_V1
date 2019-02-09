import 'package:flutter/material.dart';
import 'package:netsurf/tools/progess_dialog.dart';

displayProgressDialog(BuildContext context) {
  Navigator.of(context).push(new PageRouteBuilder(
      opaque: false,
      pageBuilder: (BuildContext context, _, __) {
        return new ProgressDialog();
      }));
}

closeProgressDialog(BuildContext context) {
  Navigator.of(context).pop();
}

showSnackBar(String message, Color color, final scaffoldKey) {
  scaffoldKey.currentState.showSnackBar(new SnackBar(
      backgroundColor: color,
      content: new Text(message,
          style: new TextStyle(
            color: Colors.white,
          ))));
}
