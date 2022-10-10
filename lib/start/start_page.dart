import 'package:flutter/material.dart';
import 'package:the_doctor/constants/constants.dart';
import 'package:the_doctor/navPages/home_Page.dart';
import 'package:the_doctor/nav_bar.dart';
import 'package:the_doctor/widgets/start_page_shadow_icon.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _startPageImage(),
          DrConstants.sizedBoxHeight20,
          _titleText(context),
          DrConstants.sizedBoxHeight10,
          _subTitle(context),
          Expanded(child: Container()),
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MainPage())));
              },
              child: CircleAvatar(
                  child: Icon(Icons.arrow_forward),
                  maxRadius: 40,
                  backgroundColor: DrConstants.colorMainColor)),
          DrConstants.sizedBoxHeight40
        ],
      ),
    );
  }

  Padding _subTitle(BuildContext context) {
    return Padding(
      padding: DrConstants.paddingRightLeft25,
      child: Text(
        DrConstants.sPageSubTitle,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .subtitle2
            ?.copyWith(color: DrConstants.colorBlack38),
      ),
    );
  }

  Text _titleText(BuildContext context) => Text(
        DrConstants.sPageTitle,
        style: Theme.of(context).textTheme.headline5?.copyWith(
            color: DrConstants.colorBlack87, fontWeight: FontWeight.w700),
      );

  ClipRRect _startPageImage() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(100),
          bottomRight: Radius.circular(50)), // Image border
      child: SizedBox.fromSize(
        child: Image.asset(DrConstants.startPageImage, fit: BoxFit.cover),
      ),
    );
  }
}
