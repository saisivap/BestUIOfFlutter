import 'package:AssignmentPages/const.dart';
import 'package:AssignmentPages/mainpage.dart';
import 'package:flutter/material.dart';

class Ownersrown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Constants().init(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MainPage()));
        },
        child: Icon(Icons.navigate_next,color: Colors.white,)
      ),
      body: Container(
        width: double.infinity,
        // decoration: bg,
         decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.orange[50],Colors.grey[50].withOpacity(0.1)])
        ),
        child: Center(
          child: maintext(),
        ),
      ),
    );
  }
}
