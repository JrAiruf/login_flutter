import 'package:flutter/material.dart';

class SignUpPasswordField extends StatelessWidget {
  final TextEditingController? controller;

  const SignUpPasswordField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 20.0),
      child: TextField(
        controller: controller,
        style: const TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Your password',
          hintStyle: const TextStyle(
              fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),
          prefixIcon: const Icon(
            Icons.key,
            color: Colors.white,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
