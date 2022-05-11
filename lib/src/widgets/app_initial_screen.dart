import 'package:flutter/material.dart';

class InitialPageTexts extends StatelessWidget {
  const InitialPageTexts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            'Hello',
            style: TextStyle(fontSize: 65, fontWeight: FontWeight.w700),
          ),
          Text(
            'Sign into your account',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
