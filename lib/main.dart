import 'package:flutter/material.dart';
import 'package:health_app/Screens/home_screen.dart';
import 'package:health_app/Screens/login_screen.dart';
import 'package:health_app/Screens/signup_screen.dart';

void main() {
  runApp(const HealthApp());
}

class HealthApp extends StatelessWidget {
  const HealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //MaterialApp Config
      debugShowCheckedModeBanner: false,
      title: 'Health App',
      initialRoute: 'LoginScreen',
      routes: {
        'LoginScreen': (context) => const LoginScreen(),
        'SignupScreen': (context) => const SignupScreen(),
        'HomeScreen': (context) => const HomeScreen()
      },
    );
  }
}
