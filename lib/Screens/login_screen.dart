import 'package:flutter/material.dart';
import 'package:health_app/style.dart';
import 'package:health_app/CustomWidgets/custom_widgets_health_app.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final cpfController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: healthAppWhite,
      resizeToAvoidBottomInset: true,
      body: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 50),
            const Text(
              'Login',
              style: TextStyle(fontSize: 20, color: healthAppRed),
            ),
            const SizedBox(height: 50),
            Image.asset('assets/Image.png', height: 200, width: 200),
            const SizedBox(height: 50),
            //
            //Name Login
            //
            LoginCustomTextField(
              icon: const Icon(Icons.account_circle_sharp,
                  size: 35, color: healthAppRed),
              keyboardType: TextInputType.text,
              hintText: 'Insira seu nome',
              labelText: 'Seu nome',
              controller: usernameController,
              obscureText: false,
            ),
            const SizedBox(height: 25),
            //
            //Email Login
            //
            LoginCustomTextField(
              icon:
                  const Icon(Icons.mail_rounded, size: 35, color: healthAppRed),
              keyboardType: TextInputType.text,
              hintText: 'Insira seu email',
              labelText: 'Seu email',
              controller: emailController,
              obscureText: false,
            ),
            const SizedBox(height: 25),
            //
            //CPF Login
            //
            LoginCustomTextField(
              icon: const Icon(
                Icons.document_scanner_rounded,
                size: 35,
                color: healthAppRed,
              ),
              keyboardType: TextInputType.text,
              hintText: 'Insira seu CPF',
              labelText: 'Seu CPF',
              controller: cpfController,
              obscureText: false,
            ),
            const SizedBox(height: 25),
            //
            //Password Login
            //
            LoginCustomTextField(
                icon: const Icon(
                  Icons.lock,
                  size: 35,
                  color: healthAppRed,
                ),
                keyboardType: TextInputType.text,
                hintText: 'Insira sua senha',
                labelText: 'Sua senha',
                controller: passwordController,
                obscureText: true),
            const SizedBox(height: 50),
            //
            //Sign in button
            //
            FilledButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, 'HomeScreen');
              },
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(healthAppRed),
              ),
              child: const Text(
                'Entrar',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 15),
            const Divider(thickness: 0.5, color: Colors.grey),
            const SizedBox(height: 15),
            Row(children: [
              GestureDetector(
                child: const Text(
                  'Esqueceu a senha?',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              GestureDetector(
                child: const Text(
                  'Não tem uma conta?',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'SignupScreen');
                },
              ),
            ]),
            const SizedBox(height: 35),

            const Text('www.healthpalmas.com.br'),
          ],
        ),
      ),
    );
  }
}
