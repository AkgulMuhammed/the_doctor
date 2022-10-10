import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 2, child: Container()),
          Expanded(
            flex: 4,
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Welcome',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: Colors.black),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Coded By Muhammed Akgül',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: Colors.black),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
