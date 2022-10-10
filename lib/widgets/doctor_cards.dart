import 'package:flutter/material.dart';

import '../constants/constants.dart';

class doctorCards extends StatelessWidget {
  const doctorCards({
    Key? key,
    required this.doctorName,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String doctorName;
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 10,
          color: DrConstants.colorDoctorCardColor,
          shape: RoundedRectangleBorder(
              borderRadius: DrConstants.borderRadiusCircular15),
          child: SizedBox(
              height: MediaQuery.of(context).size.height / 4.1,
              width: MediaQuery.of(context).size.width / 2.7,
              child: Image.asset(image)),
        ),
        Positioned(
          top: 100,
          child: Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height / 8,
            width: MediaQuery.of(context).size.width / 2.6,
            decoration: const BoxDecoration(
              color: Color.fromARGB(190, 246, 246, 246),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(doctorName,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold)),
                DrConstants.sizedBoxHeight10,
                Text(text,
                    style: Theme.of(context).textTheme.subtitle2?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: DrConstants.colorRedorange,
                        )),
              ],
            ),
          ),
        ),
        Positioned(
            top: 80,
            left: 30,
            child: Row(
              children: [
                DoctorCardIcons(
                    icons: Icons.videocam_outlined,
                    color: Colors.white,
                    iconcolor: DrConstants.colorMainColor),
                DrConstants.sizedBoxWidth15,
                DoctorCardIcons(
                    icons: Icons.chat_outlined,
                    color: Colors.white,
                    iconcolor: DrConstants.colorRedorange),
              ],
            ))
      ],
    );
  }
}

class DoctorCardIcons extends StatelessWidget {
  const DoctorCardIcons({
    Key? key,
    required this.icons,
    required this.color,
    required this.iconcolor,
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
              width: 35,
              height: 35,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  icons,
                  color: iconcolor,
                  size: 20,
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
