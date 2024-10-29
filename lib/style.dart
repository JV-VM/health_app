import 'package:flutter/material.dart';

const Color healthAppRed = Color.fromARGB(255, 239, 68, 68);
const Color healthAppWhite = Color.fromARGB(255, 241, 241, 241);

InputDecoration heathAppTextFormsStyle(
    Icon? icon, String textForHint, String textForLabel) {
  return InputDecoration(
    icon: icon,
    hintText: textForHint,
    labelText: textForLabel,
    hintStyle: const TextStyle(color: healthAppRed),
    labelStyle: const TextStyle(color: healthAppRed),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: healthAppRed, width: 3),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: healthAppRed, width: 2),
    ),
  );
}
