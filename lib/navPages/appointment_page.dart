import 'package:flutter/material.dart';
import 'package:the_doctor/constants/constants.dart';

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Column(
        children: [
          DrConstants.sizedBoxHeight5,
          Padding(
              padding: DrConstants.paddingRightLeft20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [_calendarAll(context), _upcomming(context)],
              )),
          DrConstants.sizedBoxHeight20,
          Stack(
            alignment: Alignment.center,
            children: [
              Card(
                elevation: 0.7,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 3.1,
                  width: MediaQuery.of(context).size.width / 1.1,
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 3.4,
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Column(
                        children: [
                          _doctorDetailAndRateRowText(context),
                          DrConstants.sizedBoxHeight20,
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.calendar_month_outlined,
                                  color: DrConstants.colorMainColor,
                                ),
                                Text(
                                  DrConstants.dPageCardDate,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge
                                      ?.copyWith(
                                          color: DrConstants.colorMainColor),
                                ),
                                DrConstants.sizedBoxWidth15,
                                Icon(
                                  Icons.access_time_rounded,
                                  color: DrConstants.colorRedorange,
                                ),
                                DrConstants.sizedBoxWidth5,
                                Text(
                                  DrConstants.dPageCardClock,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge
                                      ?.copyWith(
                                          color: DrConstants.colorRedorange),
                                ),
                                DrConstants.sizedBoxWidth15,
                                Icon(
                                  Icons.brightness_1,
                                  size: 15,
                                  color: DrConstants.colorGreen,
                                ),
                                DrConstants.sizedBoxWidth5,
                                Text(
                                  DrConstants.dPageCardConfirmed,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge
                                      ?.copyWith(
                                          color: DrConstants.colorMainColor),
                                )
                              ],
                            ),
                          ),
                          DrConstants.sizedBoxHeight15,
                          Padding(
                            padding: DrConstants.paddingRightLeft10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Questions'),
                                  
                                ),
                                ElevatedButton(onPressed: () {
                                  
                                }, child: Text('randevu al'))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Padding _doctorDetailAndRateRowText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 5),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: DrConstants.colorDoctorCardColor,
                borderRadius: BorderRadius.circular(12)),
            height: MediaQuery.of(context).size.height / 11,
            width: MediaQuery.of(context).size.width / 5,
            child: Image.asset(DrConstants.doctorCardOne),
          ),
          DrConstants.sizedBoxWidth15,
          _doctorNamesAndDepartmentStars(context)
        ],
      ),
    );
  }

  Column _doctorNamesAndDepartmentStars(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          DrConstants.doctorCardTitleOne,
          textAlign: TextAlign.start,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(DrConstants.doctorCardDepartmentOne,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: DrConstants.colorRedorange)),
        DrConstants.sizedBoxHeight10,
        _stars()
      ],
    );
  }

  Row _stars() {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 13,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 13,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 13,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 13,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 13,
        ),
        DrConstants.sizedBoxWidth10,
        Text(
          DrConstants.dDetailPageContainerRatingValues,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Row _upcomming(BuildContext context) {
    return Row(
      children: [
        Text(
          DrConstants.dPageUpcoming,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: DrConstants.colorMainColor),
        ),
        Icon(
          Icons.keyboard_arrow_down_rounded,
          color: DrConstants.colorMainColor,
        )
      ],
    );
  }

  Row _calendarAll(BuildContext context) {
    return Row(
      children: [
        _calendarIcon(context),
        DrConstants.sizedBoxWidth10,
        _dateText(context),
        DrConstants.sizedBoxWidth10,
        _dateTodayAndYear(context),
      ],
    );
  }

  Column _dateTodayAndYear(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          DrConstants.dPageDateDaytuesday,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: DrConstants.colorBlack45),
        ),
        Text(
          DrConstants.dPageDateYear,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
              color: DrConstants.colorBlack, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Text _dateText(BuildContext context) => Text(
        DrConstants.dPageDateDay,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontSize: 35,
            ),
      );

  Container _calendarIcon(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 20,
      width: MediaQuery.of(context).size.width / 9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: DrConstants.colorMainColor)),
      child: Icon(
        Icons.calendar_month_outlined,
        color: DrConstants.colorRedorange,
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        color: DrConstants.colorMainColor,
        icon: const Icon(Icons.arrow_back),
        onPressed: () {},
      ),
      backgroundColor: DrConstants.colorWhite,
      elevation: 0,
      shadowColor: Colors.white,
      centerTitle: true,
      title: Text(
        DrConstants.dPageAppbarTitle,
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(color: DrConstants.colorMainColor),
      ),
    );
  }
}
