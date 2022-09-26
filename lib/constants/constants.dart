import 'package:flutter/material.dart';

class DrConstants {
/*                                                 Padding                                                            */

//Padding
  static const EdgeInsets paddingRightLeft25 =
      EdgeInsets.only(right: 25, left: 25);
      static const EdgeInsets paddingRightLeftTop10 =
      EdgeInsets.only(right: 10, left: 10,top: 10);
/*                                                 Colors                                                            */

//colors


  static const colorSkyblue = Color.fromARGB(255, 141, 211, 216);
  static const colorRedorange = Color.fromARGB(255, 246, 96, 96);
  static const colorBlack87 = Colors.black87;
  static const colorBlack45 = Colors.black45;
  static const colorBlack38 = Colors.black38;
  static const Color colorMainColor = Color.fromRGBO(116, 104, 223, 0.9);
  static const colorRose = Color.fromARGB(255, 249, 182, 182);
  static const colorWhite = Colors.white;


  static const colorBlueone = Color.fromARGB(255, 249, 182, 182);

  static const colorgrey = Color.fromARGB(255, 135, 135, 135);

  
  
  static const colorgreen100 = Color.fromARGB(255, 200, 230, 201);
  static const colorred100 = Color.fromARGB(255, 229, 64, 64);
  static const colorgreen = Colors.green;
  static const colortransparent = Colors.transparent;
  static const colorlightgrey = Color.fromARGB(255, 221, 219, 219);
/*                                                 Radius Circular                                                            */

  static Radius radiusCircular25 = const Radius.circular(20);
  //BorderRadius
  static BorderRadius borderRadiusCircular5 = BorderRadius.circular(5);
  static BorderRadius borderRadiusCircular10 = BorderRadius.circular(10);
  static BorderRadius borderRadiusCircular15 = BorderRadius.circular(15);
  static BorderRadius borderRadiusCircular20 = BorderRadius.circular(20);
  static BorderRadius borderRadiusCircular25 = BorderRadius.circular(25);
  static BorderRadius borderRadiusCircular30 = BorderRadius.circular(30);
  static BorderRadius borderRadiuscircular50 = BorderRadius.circular(50);

//SizedBox
  static SizedBox sizedBoxHeight5 = const SizedBox(height: 5);
  static SizedBox sizedBoxHeight10 = const SizedBox(height: 10);
  static SizedBox sizedBoxHeight15 = const SizedBox(height: 15);
  static SizedBox sizedBoxHeight20 = const SizedBox(height: 20);
  static SizedBox sizedBoxHeight40 = const SizedBox(height: 40);
  static SizedBox sizedBoxHeight80 = const SizedBox(height: 80);
  static SizedBox sizedBoxWidth15 = const SizedBox(width: 15);
  static SizedBox sizedBoxWidth5 = const SizedBox(width: 5);
  static SizedBox sizedBoxWidth10 = const SizedBox(width: 10);
  static SizedBox sizedBoxWidth20 = const SizedBox(width: 20);
  static SizedBox sizedBoxWidth25 = const SizedBox(width: 25);
/*                                                 Image                                                            */

//Start Page Image

  static const String startPageImage = 'assets/start/startPageImage.png';
  static const String homePageCircleAvatarImage = 'assets/home/avatar.png';
  static const String homePageCardDoctorImage = 'assets/home/cardDoctor.png';
  static const String homePageMiniIconsStetescop = 'assets/home/stetescop.png';
 static const String homePageMiniIconsLabs = 'assets/home/labs.png';
 static const String homePageMiniIconsHeal = 'assets/home/heal.png';
 static const String homePageMiniIconsAmbulance = 'assets/home/ambulance.png';

  /*                                                 Strings                                                     */
  //Start Page Image
  static const String sPageTitle = 'Find a doctor near you';
  static const String sPageSubTitle =
      'Lorem ipsum dolor sit amet. Et quis labore vel similique consequuntur a ipsam repellat. Et ratione quia a consequuntur nemo ea numquam consequuntur ';

//Home Page Image
  static const String hPageAppbarTitle = 'Hi !';
  static const String hPageAppbarTitleTwo = 'Jonathan Tawly';
  static const String hPageSearchText = 'Search';
//Home Page Card Image
  static const String hPageCardElevatedButtonTitle = 'Healthy or Expensive ';
  static const String hPageCardElevatedButtonSubtitle =
      'early protction for family \n & Friends health';
  static const String hPageCardElevatedButtonText = 'Learn More';
//Home Page Icons Text
  static const String hPageIconDoctorText = 'Doctors';
  static const String hPageIconLabsText = 'Labs';
  static const String hPageIconAmbulanceText = 'Ambulance';
  static const String hPageIconPharmsText = 'Pharm\'s';

  static const String hPageDegradeText = 'Top Rated Doctors';

//Detail Page Text
  static const String dDetailPageAppbarTitle = 'Doctors Details';
  static const String dDetailPageContainerPatients = 'Patients';
  static const String dDetailPageContainerPatientsValues = '1k+';
  static const String dDetailPageContainerExperience = 'Experience';
  static const String dDetailPageContainerExperienceValues = '5 Years+';
  static const String dDetailPageContainerRating = 'Rating';
  static const String dDetailPageContainerRatingValues = '4.9';

  static const String dDetailPageAbout = 'About Doctor';
  static const String dDetailPageSee = 'See reviews';

  static const String dDetailPageDoctorAboutText =
      'Dr. Jenny Wilson is the top most Cardiologist specialist in Nanyang Hospital at London. She achived several awards for her wonderful contribution in medical field. She is available for private consultation. ';

  static const String dDetailPageWorkHoursText = 'Working Hours';
  static const String dDetailPageWorkHours = 'Mon-Fri,09.00 AM -20.00 PM';

  static const String dDetailPageMakeAppointment = 'Make Appointment';

  static const String dDetailElevatedIconBottom = 'Book Appointment';

  static const String dDetailDaysDayOne = '12';
  static const String dDetailDaysMonthOne = 'Mon';

  static const String dDetailDaysDayTwo = '13';
  static const String dDetailDaysMonthTwo = 'Tue';

  static const String dDetailDaysDayThree = '14';
  static const String dDetailDaysMonthThree = 'Wed';

  static const String dDetailDaysDayOneFour = '15';
  static const String dDetailDaysMonthOneFour = 'Thu';

  static const String dDetailDaysDayFive = '16';
  static const String dDetailDaysMonthFive = 'Fri';

  static const String dPageAppbarTitle = 'Appointment';
  static const String dPageDateDay = '16';
  static const String dPageDateDaytuesday = 'Tuesday';
  static const String dPageDateYear = 'May, 2022';
  static const String dPageUpcoming = 'Upcomming';

  static const String dPageCardTitleOne = 'Dr. Seamle John';
  static const String dPageCardDepartmentOne = 'Pediatrican';

  static const String dPageCardTitleTwo = 'Dr. Jerem\'s Steve  ';
  static const String dPageCardDepartmentTwo = 'Cardiologlist';

  static const String dPageCardDate = '16, May 2022';
  static const String dPageCardClock = '09:00AM';
  static const String dPageCardConfirmed = 'Confirmed';

  static const String dPageElevatedBottomPink = 'Cancel';
  static const String dPageElevatedBottomPurple = 'Reschedule';
}
