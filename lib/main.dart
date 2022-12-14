import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_doctor/start/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const StartPage(),
    );
  }
}
