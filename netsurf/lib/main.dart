import 'package:flutter/material.dart';
import 'package:netsurf/pages/login.dart';

void main() => runApp(new MaterialApp(
    title: 'Netsurf',
    theme: ThemeData(primaryColor: Colors.green),
    debugShowCheckedModeBanner: false,
    home: LoginScreen(),
));