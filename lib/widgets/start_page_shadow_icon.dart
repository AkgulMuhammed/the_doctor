

import 'package:flutter/material.dart';
import 'package:the_doctor/constants/constants.dart';
import 'package:the_doctor/navPages/home_Page.dart';
import 'package:the_doctor/nav_bar.dart';

class StartPageShadowIcon extends StatelessWidget {
  const StartPageShadowIcon({
    Key? key,
    required this.icons,
  }) : super(key: key);

  final IconData icons;
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 15,
     
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: ClipOval(
        
        child: Material(
          color: DrConstants.colorMainColor, 
          child: GestureDetector(
           
            child: SizedBox(
             
              width: 80,
              height: 80,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  icons,
                  color: Colors.white70,
                  size: 45,
                ),
              ),
            ),
            onDoubleTap: () {Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => MainPage(),));},
          ),
        ),
      ),
    );
  }
}
