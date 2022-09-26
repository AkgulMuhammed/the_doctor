import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Center(
              child: Text(
                'Giriş Sayfası\nYakında Burada',
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
