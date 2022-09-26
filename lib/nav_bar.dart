import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:the_doctor/constants/constants.dart';
import 'package:the_doctor/navPages/appointment_page.dart';
import 'package:the_doctor/navPages/chat_Page.dart';
import 'package:the_doctor/navPages/home_Page.dart';
import 'package:the_doctor/navPages/profil_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    ChatPage(),
    AppointmentPage(),
    ProfilPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.transparent,
                selectedFontSize: 0,
                unselectedFontSize: 0,
                onTap: onTap,
                selectedItemColor: DrConstants.colorMainColor,
                unselectedItemColor: Colors.white54,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                elevation: 30.0,
                currentIndex: currentIndex,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_filled), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.chat), label: 'Chat'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.list_alt_rounded), label: 'Appointment'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.account_circle_rounded),
                      label: 'Profil'),
                ]),
          )),
    );
  }
}
