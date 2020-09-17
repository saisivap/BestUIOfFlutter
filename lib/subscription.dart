import 'package:AssignmentPages/const.dart';
import 'package:flutter/material.dart';

class SubScription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.orange[50],Colors.grey[50].withOpacity(0.1)])
        ),
      child: Center(child: Text("Coming Soon",style: subtext,)),
    );
  }
}