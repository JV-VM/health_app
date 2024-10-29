import 'package:flutter/material.dart';
import 'package:health_app/style.dart';

class LoginCustomTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextInputType? keyboardType;
  final Icon? icon;
  final bool obscureText;
  final TextEditingController? controller;

  const LoginCustomTextField(
      {super.key,
      required this.hintText,
      required this.labelText,
      required this.keyboardType,
      this.icon,
      required this.obscureText,
      this.controller});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: heathAppTextFormsStyle(
        icon,
        hintText,
        labelText,
      ),
      obscureText: obscureText,
      controller: controller,
    );
  }
}
