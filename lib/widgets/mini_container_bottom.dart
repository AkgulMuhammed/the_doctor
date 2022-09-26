import 'package:flutter/material.dart';
import 'package:the_doctor/constants/constants.dart';

class MiniContainerBottom extends StatelessWidget {
  const MiniContainerBottom({
    Key? key,
    required this.image,
    required this.text, required this.color,
  }) : super(key: key);

  final String image;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 7,
            height: MediaQuery.of(context).size.height / 14,
            decoration: BoxDecoration(
              borderRadius: DrConstants.borderRadiusCircular10,
              color: color,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
          ),
          DrConstants.sizedBoxHeight5,
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.black87.withOpacity(0.6), fontSize: 14,fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}