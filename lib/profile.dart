import 'package:AssignmentPages/const.dart';
import 'package:AssignmentPages/deatils.dart';
import 'package:AssignmentPages/editprofile.dart';
import 'package:AssignmentPages/ownersrown.dart';
import 'package:AssignmentPages/settingspage.dart';
import 'package:AssignmentPages/subscription.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  // @override
  TabController tabController;
  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: Text("Hello"),
          );
        });
  }

  Widget build(BuildContext context) {
    Constants().init(context);

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      // backgroundColor: Colors.blue[50].withOpacity(1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Profile",
          style: subtext,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "rsl",
              style: TextStyle(
                color: Colors.orange[500],
                fontSize: Constants.blockSizeHorizontal * 10,
                fontWeight: FontWeight.bold,
                letterSpacing: Constants.blockSizeHorizontal,
              ),
            ),
          ),
        ],
        leading: Icon(
          Icons.menu,
          color: Colors.black,
          size: Constants.blockSizeVertical * 5,
        ),
      ),
      body: Container(
        
         decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.orange[50],Colors.grey[50].withOpacity(0.1)])
        ),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: ImageIconEdit(image_url: "images/mahesh.jpg",nameOfCustomer: "Sai Mahesh",),
            ),
            Expanded(
              flex: 10,
              child: Stack(
                children: [
                  Container(
                    color: Colors.transparent,
                    // color: Colors.red[100],
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Container(
                              // height: 100,
                              margin: EdgeInsets.only(
                                  top: Constants.blockSizeVertical * 1),
                              decoration: BoxDecoration(
                                  // border: Border.all(width:2,color:Colors.red)
                                  ),
                              child: TabBar(
                                  indicatorPadding: EdgeInsets.all(0),
                                  controller: tabController,
                                  labelColor: Colors.orange,
                                  labelStyle: tab_heading,
                                  unselectedLabelColor: Colors.black,
                                  indicatorColor: Colors.orange,
                                  indicator: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        //                   <--- left side
                                        color: Colors.orange,
                                        width: Constants.blockSizeVertical / 2,
                                      ),
                                    ),
                                  ),
                                  tabs: [
                                    Tab(
                                      child: Text(
                                        "Deatils",
                                        maxLines: 1,
                                      ),
                                    ),
                                    Tab(
                                      child: Text(
                                        "Settings",
                                        maxLines: 1,
                                      ),
                                    ),
                                    Tab(
                                      child: Text(
                                        "SubScription",
                                        maxLines: 1,
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            // height: 100,
                            child: TabBarView(
                              controller: tabController,
                              children: <Widget>[
                                
                                Deatils(),
                                
                                SettingsPage(),
                                SubScription(),
                              ],
                            ),
                          ),
                        ),
                        // FloatingActionButton(onPressed: (){},child: Icon(Icons.edit),)
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0,bottom: 80),
                      child: FloatingActionButton(
                        backgroundColor: main_color,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EditProfile()));
                        },
                        child: Icon(Icons.edit),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Expanded(
            //   flex: 1,
            //   child: CustomButton(
            //     name: "Log Out",
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class ImageIconEdit extends StatelessWidget {
  final String image_url;
  final String nameOfCustomer;
  ImageIconEdit({this.image_url,this.nameOfCustomer});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(Constants.blockSizeVertical * 20),
        bottomRight:
            Radius.circular(Constants.blockSizeVertical * 20),
      ),
      elevation: 50,
      shadowColor: Colors.blue[200],
      child: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.only(
                    top: Constants.blockSizeVertical * 2),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      // color: Colors.black,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: Constants.blockSizeVertical * 5,
                            backgroundImage:
                            //image_url
                                AssetImage(image_url),
                          ),
                          // Text(
                          //   "Sai Mahesh",
                          //   style: subtext,
                          // ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: Constants.blockSizeHorizontal * 55,
                      top: 1,
                      child: CircleAvatar(
                        // radius: 10,
                        backgroundColor: Color(0XFFE96B61),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(
                  top: 4,
                ),
                child: Text(
                  nameOfCustomer,
                  style: TextStyle(
                    color: Colors.grey,
                    // fontWeight: FontWeight.bold,
                    fontSize: Constants.blockSizeHorizontal * 5,
                    letterSpacing: Constants.blockSizeHorizontal / 3,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
