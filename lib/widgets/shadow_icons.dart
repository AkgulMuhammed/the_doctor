import 'package:flutter/material.dart';

import '../constants/constants.dart';

class shadowIcon extends StatelessWidget {
  const shadowIcon({
    Key? key,
    required this.icons,
    required this.color, required this.iconcolor,
  }) : super(key: key);
  final Color color;
  final Color iconcolor;
  final IconData icons;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35.0),
      ),
      child: ClipOval(
        child: Material(
          color: color, // button color
          child: InkWell(
          
            child: SizedBox(
              width: 50,
              height: 50,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  icons,
                  color: iconcolor,
                  size: 30,
                ),
              ),
            ),
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
