import 'package:flutter/material.dart';

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Center(
              child: Text(
                'Randevu Sayfası\nYakında Burada',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}