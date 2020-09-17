import 'package:AssignmentPages/const.dart';
import 'package:AssignmentPages/profile.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.of(context).pop();
            }),
        title: Text(
          "Edit Profile",
          style: subtext,
        ),
      ),
      body: Container(
        // color: Colors.orange[50].withOpacity(0.4),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.orange[50],Colors.grey[50].withOpacity(0.1)])
        ),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: ImageIconEdit(
                image_url: "images/mahesh.jpg",
                nameOfCustomer: "Sai Mahesh",
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                margin: EdgeInsets.only(top: Constants.blockSizeVertical * 2),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 10,
                        shadowColor: Colors.black.withOpacity(0.1),
                        child: TextField(
                          decoration: textFieldDecorater("User Name"),
                          autofocus: true,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 10,
                        shadowColor: Colors.black.withOpacity(0.1),
                        child: TextField(
                          decoration: textFieldDecorater("Company Number"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 10,
                        shadowColor: Colors.black.withOpacity(0.1),
                        child: TextField(
                          decoration: textFieldDecorater("Whatsapp Number"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 10,
                        shadowColor: Colors.black.withOpacity(0.1),
                        child: TextField(
                          decoration: textFieldDecorater("Email Address"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 10,
                        shadowColor: Colors.black.withOpacity(0.1),
                        child: TextField(
                          decoration: textFieldDecorater(
                                  "Property Address As Per Standard")
                              .copyWith(contentPadding: EdgeInsets.all(16)),
                          keyboardType: TextInputType.multiline,
                          maxLines: 5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: CustomButton(
                name: "Update Profile",
              ),
            )
          ],
        ),
      ),
    );
  }

  InputDecoration textFieldDecorater(propertyName) {
    return InputDecoration(
      filled: true,
      fillColor: Colors.white,
      focusColor: Colors.red,
      hintText: propertyName,
      hintStyle: TextStyle(
        color: Colors.grey,
        fontSize: Constants.blockSizeVertical * 2.5,
      ),
      contentPadding: EdgeInsets.only(left: 20),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.lightGreenAccent,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(Constants.blockSizeVertical * 1.5),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 5.0,
        ),
        borderRadius: BorderRadius.circular(10),
      ),

      // border:
    );
  }
}
