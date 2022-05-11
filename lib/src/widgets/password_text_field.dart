import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  final TextEditingController? passwordController;
  const PasswordTextField({Key? key, required this.passwordController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: passwordController,
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
    );
  }
}
