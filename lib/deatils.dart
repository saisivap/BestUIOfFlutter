import 'package:AssignmentPages/const.dart';
import 'package:flutter/material.dart';

/// For Static data we can get data by run time using API
class Deatils extends StatelessWidget {
  static const personal_deatils = [
    'saimahesh.Paruchuri@gmail.com',
    '+91 9949289040',
    '+91 9949289040',
    'Markapuram,India'
  ];
  static const personal_icons = [
    Icons.email,
    Icons.local_phone,
    Icons.message,
    Icons.location_on
  ];
  static const relational_deatils = [
    'saimahesh.Paruchuri@gmail.com',
    '+91 9949289040',
    '+91 9949289040',
    // 'Markapuram,India'
  ];
  static const relational_icons = [
    Icons.person,
    Icons.local_phone,
    Icons.message,
    // Icons.location_on
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: ListView.builder(
              itemCount: personal_deatils.length,
              itemBuilder: (BuildContext context, int index) {
                return buildContainer(index);
              },
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Relationship Manager",
                          style: TextStyle(
                              color: Colors.orange,
                              letterSpacing: Constants.blockSizeHorizontal,
                              fontSize: Constants.blockSizeHorizontal * 5,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    // width: double.infinity,
                    // color: Colors.transparent,
                    child: ListView.builder(
                      itemCount: relational_deatils.length,
                      itemBuilder: (BuildContext context, int index) {
                        return buildRelational(index);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.orange[50],
                Colors.grey[50].withOpacity(0.1)
              ])),
              child: CustomButton(
                name: "Log Out",
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildContainer(index) {
    return Container(
      // color: Colors.transparent,
      decoration: new BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.orange[50].withOpacity(0.9),
        Colors.grey[50].withOpacity(0.1)
      ])),
      padding: EdgeInsets.all(1),
      child: Container(
        // decoration: new BoxDecoration(color: Colors.transparent),
        child: ListTile(
          leading: Icon(
            personal_icons[index],
            color: Colors.blueGrey,
          ),
          title: Text(
            personal_deatils[index],
            style: TextStyle(color: Colors.blueGrey),
          ),
        ),
      ),
    );
  }

  Container buildRelational(index) {
    return Container(
      // color: Colors.red,
      padding: EdgeInsets.all(1),
      child: ListTile(
        leading: Icon(
          relational_icons[index],
          color: Colors.blueGrey,
        ),
        title: Text(
          relational_deatils[index],
          style: TextStyle(color: Colors.blueGrey),
        ),
      ),
    );
  }
}
