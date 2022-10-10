import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:the_doctor/constants/constants.dart';
import 'package:the_doctor/widgets/gradient_text.dart';
import 'package:the_doctor/widgets/mini_container_bottom.dart';
import 'package:the_doctor/widgets/shadow_icons.dart';

import '../widgets/doctor_cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _appbarAndSearchBarAll(context),
            DrConstants.sizedBoxHeight20,
            _learnMoreCard(context),
            DrConstants.sizedBoxHeight20,
            _miniContainers(),
            DrConstants.sizedBoxHeight15,
            _gradientText(context),
            DrConstants.sizedBoxHeight15,
            Padding(
              padding: DrConstants.paddingRightLeft25,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const doctorCards(
                        doctorName: DrConstants.doctorCardTitleTwo,
                        text: DrConstants.doctorCardDepartmentTwo,
                        image: DrConstants.doctorCardOne),
                    DrConstants.sizedBoxWidth10,
                    const doctorCards(
                        doctorName: DrConstants.doctorCardTitleOne,
                        text: DrConstants.doctorCardDepartmentOne,
                        image: DrConstants.doctorCardTwo),
                    DrConstants.sizedBoxWidth10,
                    const doctorCards(
                        doctorName: DrConstants.doctorCardTitleTwo,
                        text: DrConstants.doctorCardDepartmentTwo,
                        image: DrConstants.doctorCardOne)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding _gradientText(BuildContext context) {
    return Padding(
      padding: DrConstants.paddingRightLeft25,
      child: GradientText(
        style: Theme.of(context)
            .textTheme
            .subtitle2
            ?.copyWith(fontWeight: FontWeight.bold),
        DrConstants.hPageDegradeText,
        gradient: LinearGradient(colors: [
          Colors.pink.shade200,
          Colors.purple.shade600,
        ]),
      ),
    );
  }

  Row _miniContainers() {
    return Row(
      children: const [
        MiniContainerBottom(
          image: DrConstants.homePageMiniIconsStetescop,
          text: DrConstants.hPageIconDoctorText,
          color: DrConstants.colorMainColor,
        ),
        MiniContainerBottom(
            image: DrConstants.homePageMiniIconsLabs,
            text: DrConstants.hPageIconLabsText,
            color: DrConstants.colorRose),
        MiniContainerBottom(
            image: DrConstants.homePageMiniIconsAmbulance,
            text: DrConstants.hPageIconAmbulanceText,
            color: DrConstants.colorRedorange),
        MiniContainerBottom(
            image: DrConstants.homePageMiniIconsHeal,
            text: DrConstants.hPageIconPharmsText,
            color: DrConstants.colorSkyblue)
      ],
    );
  }

  Padding _learnMoreCard(BuildContext context) {
    return Padding(
      padding: DrConstants.paddingRightLeft25,
      child: Stack(
        children: [
          _gradientCardAndImage(context),
          _cardColumnText(context),
        ],
      ),
    );
  }

  Positioned _cardColumnText(BuildContext context) {
    return Positioned(
        top: 20,
        left: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DrConstants.hPageCardElevatedButtonTitle,
              textAlign: TextAlign.left,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: DrConstants.colorWhite),
            ),
            DrConstants.sizedBoxHeight10,
            Text(
              DrConstants.hPageCardElevatedButtonSubtitle,
              textAlign: TextAlign.left,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: DrConstants.colorWhite),
            ),
            DrConstants.sizedBoxHeight10,
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: DrConstants.colorMainColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: DrConstants.borderRadiusCircular15)),
                onPressed: () {},
                child: Text(
                  DrConstants.hPageCardElevatedButtonText,
                  style: Theme.of(context)
                      .textTheme
                      .button
                      ?.copyWith(color: DrConstants.colorWhite),
                )),
          ],
        ));
  }

  Container _gradientCardAndImage(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 5,
      child: Row(
        children: [
          Expanded(child: Container()),
          Image.asset(DrConstants.homePageCardDoctorImage)
        ],
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [DrConstants.colorRose, DrConstants.colorMainColor],
        ),
      ),
    );
  }

  Padding _appbarAndSearchBarAll(BuildContext context) {
    return Padding(
      padding: DrConstants.paddingRightLeftTop10,
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
              color: DrConstants.colorMainColor,
            ),
            height: MediaQuery.of(context).size.height / 4.3,
          ),
          Positioned(
            left: 10,
            right: 10,
            top: 35,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _appBarAll(context),
                DrConstants.sizedBoxHeight20,
                _searchbarAndIcon(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Row _searchbarAndIcon(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 11,
        child: TextField(
            cursorColor: DrConstants.colorMainColor,
            decoration: InputDecoration(
              fillColor: DrConstants.colorWhite,
              labelStyle: TextStyle(color: Colors.grey),
              filled: true,
              hoverColor: Colors.grey,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              hintText: DrConstants.hPageSearchText,
              hintStyle: TextStyle(color: Colors.grey),
            )),
      ),
      DrConstants.sizedBoxWidth10,
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: DrConstants.colorMainColor,
        ),
        height: MediaQuery.of(context).size.height / 16,
        width: MediaQuery.of(context).size.width / 8,
        child: const Icon(Icons.list, size: 35, color: DrConstants.colorWhite),
      ),
    ]);
  }

  Row _appBarAll(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _appBarLeft(context),
        shadowIcon(
            icons: Icons.notifications_none_outlined,
            color: DrConstants.colorWhite,
            iconcolor: DrConstants.colorMainColor)
      ],
    );
  }

  Row _appBarLeft(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: DrConstants.colorWhite,
          child: Image.asset(
            DrConstants.homePageCircleAvatarImage,
          ),
        ),
        DrConstants.sizedBoxWidth15,
        _appbarText(context),
      ],
    );
  }

  Column _appbarText(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          DrConstants.hPageAppbarTitle,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: DrConstants.colorWhite),
        ),
        Text(
          DrConstants.hPageAppbarTitleTwo,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: DrConstants.colorWhite),
        ),
      ],
    );
  }
}
