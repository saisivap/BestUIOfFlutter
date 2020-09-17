// import 'dart:html';

import 'package:flutter/material.dart';

class Constants {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
    print(blockSizeVertical);
    print(blockSizeHorizontal);
  }
}

//BackGround Decoration
BoxDecoration bg = BoxDecoration(
  gradient: LinearGradient(
      colors: [
        Color(0XFFF37168).withOpacity(0.1),
        Color(0XFF1B3F50).withOpacity(0.1)
      ],
      // begin: Alignment.centerLeft,
      // end: Alignment.centerRight,
      begin: const FractionalOffset(0.5, 0.0),
      end: const FractionalOffset(0.0, 0.5),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp),
);


//Bottom Radius on Left and Right with white back ground

BoxDecoration bottom_left_and_bottom_right_radius = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(Constants.blockSizeVertical * 10),
    bottomRight: Radius.circular(Constants.blockSizeVertical * 10),
  ),
);


// maincolor
Color main_color=Color(0XFFE96B61);
//RsR text

Text rsl = Text(
  "rsl",
  style: TextStyle(
    color: Color(0XFFFF6B61),
    fontSize: Constants.blockSizeHorizontal * 15,
    fontWeight: FontWeight.bold,
  ),
);

// SubHeadings

TextStyle subtext = TextStyle(
  color: Colors.grey,
  fontWeight: FontWeight.bold,
  fontSize: Constants.blockSizeHorizontal * 5,
  letterSpacing: Constants.blockSizeHorizontal / 3,
);
TextStyle tab_heading = TextStyle(
  // color: Colors.grey,
  // fontWeight: FontWeight.bold,
  fontSize: Constants.blockSizeHorizontal * 4,
  
  // letterSpacing: Constants.blockSizeHorizontal / 3,
);

//Main Text OWNERSROWN and his style
RichText maintext() {
  return RichText(
    text: TextSpan(
        style: new TextStyle(
          fontSize: Constants.blockSizeHorizontal * 12,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          letterSpacing: Constants.blockSizeHorizontal / 3,
          shadows: [
            Shadow(
              color: Colors.black12,
              blurRadius: 1.0,
              offset: Offset(-3.0, -3.0),
            ),
          ],
        ),
        children: [
          TextSpan(text: "owne"),
          TextSpan(
            text: "rsl",
            style: TextStyle(
                color: Colors.orange[500], fontWeight: FontWeight.bold),
          ),
          TextSpan(text: "own")
        ]),
  );
}


//// Custom button for logout 
class CustomButton extends StatelessWidget {
   final String name;
  CustomButton({this.name});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // color: Colors.yellowAccent,
        height: Constants.blockSizeVertical * 7,
        padding: EdgeInsets.symmetric(
          horizontal: Constants.blockSizeHorizontal * 20,
        ),
        width: double.infinity,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  Constants.blockSizeHorizontal * 19),
              side: BorderSide(color: Colors.red)),
          color: Color(0XFFE96B61),
          textColor: Colors.white,
          onPressed: () {
            print("Hey");
          },
          child: Text(
            name,
            style: TextStyle(
              // color: Colors.grey,

              fontWeight: FontWeight.bold,
              fontSize: Constants.blockSizeHorizontal * 6,
              letterSpacing: Constants.blockSizeHorizontal / 3,
            ),
          ),
        ),
      ),
    );
  }
}


// Image Log With Image
 
