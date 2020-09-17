import 'package:AssignmentPages/const.dart';
import 'package:AssignmentPages/mainpage.dart';
import 'package:AssignmentPages/ownersrown.dart';
import 'package:AssignmentPages/profile.dart';
import 'package:flutter/material.dart';
// import 'dart:html';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Ownersrown(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Constants().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Profile(),
    );
  }
}
