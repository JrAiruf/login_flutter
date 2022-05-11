import 'package:flutter/material.dart';

class SignUpEmailField extends StatelessWidget {
  final TextEditingController? controller;

  const SignUpEmailField({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: const TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: 'Your e-mail',
        hintStyle: const TextStyle(
            fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),
        prefixIcon: const Icon(
          Icons.email,
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
    );
  }
}
