import 'package:AssignmentPages/const.dart';
import 'package:AssignmentPages/profile.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Constants().init(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Profile()));
        },
        child: Icon(Icons.navigate_next,color: Colors.white,)
      ),
          body: Container(
        width: double.infinity,
         decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.orange[50],Colors.grey[50].withOpacity(0.1)])
        ),
        child: Container(
          margin: EdgeInsets.only(top: Constants.blockSizeVertical * 4),
          child: Column(
            children: [
              Expanded(
                flex: (Constants.blockSizeVertical / 2).round(),
                child: Container(
                  width: double.infinity,
                  decoration: bottom_left_and_bottom_right_radius,
                  child: Center(
                    child: maintext(),
                  ),
                ),
              ),
              Expanded(
                flex: (Constants.blockSizeVertical / 1.5).round(),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome!',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: Constants.blockSizeHorizontal * 11,
                          letterSpacing: Constants.blockSizeHorizontal / 3,
                        ),
                      ),
                      SizedBox(height: Constants.blockSizeVertical / 2),
                      Text(
                        'TagLine Comes here',
                        style: TextStyle(
                          color: Colors.grey,
                          // fontWeight: FontWeight.bold,
                          fontSize: Constants.blockSizeHorizontal * 5,
                          letterSpacing: Constants.blockSizeHorizontal / 3,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: (Constants.blockSizeVertical / 2).round(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: Constants.blockSizeVertical * 25,
                    backgroundColor: Colors.orange[500],
                    child: Container(
                      // color: Colors.black12,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: Constants.blockSizeVertical * 15,
                          backgroundColor: Colors.white,
                          child: Container(
                            child: rsl,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
