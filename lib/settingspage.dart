import 'package:AssignmentPages/const.dart';
import 'package:AssignmentPages/listitem.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  List<ListItem> _dropdownItems = [
    ListItem(1, "Indian Rupee"),
    ListItem(2, "USD"),
    ListItem(3, "Thai Bhat"),
    ListItem(4, "Euro")
  ];
  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _selectedItem;
  bool is_clicked = false;
  BorderSide property = BorderSide(color: Colors.transparent, width: 0);
  Color colorToggle = Colors.grey;
  @override
  void initState() {
    // toggle(is_clicked);
    // TODO: implement initState
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _selectedItem = _dropdownMenuItems[0].value;

    super.initState();
  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = List();
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }

  void toggle() {
    setState(
      () {
        is_clicked ? is_clicked = false : is_clicked = true;

        // is_clicked
        //     ? property = BorderSide(color: Colors.orange[400], width: 2)
        //     : property = BorderSide(color: Colors.transparent, width: 0);

        if (is_clicked) {
          property = BorderSide(color: Colors.orange[400], width: 2);
          colorToggle = Colors.orange;
        } else {
          property = BorderSide(color: Colors.transparent, width: 0);
          colorToggle = Colors.grey;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.orange[50], Colors.grey[50].withOpacity(0.1)])),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    profileheadings("Language"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // RaisedButton(onPressed: (){},child: Text("Hindi"),),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            height: Constants.blockSizeVertical * 8,
                            width: Constants.blockSizeHorizontal * 40,
                            child: GestureDetector(
                              onTap: () {
                                toggle();
                              },
                              child: CardCustom(
                                property: property,
                                nameOfElement: "Hindi",
                                toggleColor: colorToggle,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: Constants.blockSizeVertical * 8,
                            width: Constants.blockSizeHorizontal * 40,
                            child: GestureDetector(
                              onTap: () {
                                toggle();
                              },
                              child: CardCustom(
                                property: property,
                                nameOfElement: "English(en)",
                                toggleColor: colorToggle,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    profileheadings("Default Currency"),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          height: Constants.blockSizeVertical * 8,
                          width: Constants.blockSizeHorizontal * 40,
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            // border: Border.all(),
                          ),
                          child: DropdownButton(
                              elevation: 5,
                              value: _selectedItem,
                              items: _dropdownMenuItems,
                              onChanged: (value) {
                                setState(() {
                                  _selectedItem = value;
                                });
                              }),
                        ),
                      ),
                    ),
                    profileheadings("Add Billing Details"),
                    Container(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            height: Constants.blockSizeVertical * 8,
                            width: Constants.blockSizeHorizontal * 40,
                            child: GestureDetector(
                              onTap: () {
                                toggle();
                              },
                              child: CardCustom(
                                property: property,
                                nameOfElement: "Add Details",
                                toggleColor: colorToggle,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    profileheadings("Add Relationship Manager"),
                    Container(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            height: Constants.blockSizeVertical * 8,
                            width: Constants.blockSizeHorizontal * 40,
                            child: GestureDetector(
                              onTap: () {
                                toggle();
                              },
                              child: CardCustom(
                                property: property,
                                nameOfElement: "Add Details",
                                toggleColor: colorToggle,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Expanded(
                    //     flex: 2,
                    //     child: Container(
                    //       child: Text("log out"),
                    //     ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 2.0,
                width: double.infinity,
                color: Colors.grey[300],
              ),
            ),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: Text(
                            "Delete My Account",
                            style: subtext.copyWith(
                                fontWeight: FontWeight.normal,
                                letterSpacing: 0),
                          ),
                        ),
                        // CustomButton(name:"Delete")
                        Container(
                          width: Constants.blockSizeHorizontal * 30,
                          height: Constants.blockSizeVertical * 9,
                          child: RaisedButton(
                            color: Colors.orange,
                            textColor: Colors.white,
                            elevation: 10,

                            // : EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  Constants.blockSizeVertical * 4),
                              side: BorderSide(width: 1, color: Colors.orange),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Delete",
                              style: TextStyle(
                                  fontSize: Constants.blockSizeVertical * 2.5,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Align profileheadings(headingName) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          headingName,
          style: subtext.copyWith(
              fontWeight: FontWeight.normal,
              fontSize: Constants.blockSizeVertical * 2,
              letterSpacing: 0),
        ),
      ),
    );
  }
}

class CardCustom extends StatelessWidget {
  final BorderSide property;
  final String nameOfElement;
  final Color toggleColor;
  CardCustom({this.property, this.nameOfElement, this.toggleColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: property,
      ),
      child: Center(
        child: Text(
          nameOfElement,
          style: TextStyle(
              color: toggleColor, fontSize: Constants.blockSizeVertical * 2),
        ),
      ),
    );
  }
}
