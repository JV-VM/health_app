import 'package:flutter/material.dart';
import 'package:health_app/CustomWidgets/custom_widgets_health_app.dart';
import 'package:health_app/style.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final cpfController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: healthAppWhite,
      resizeToAvoidBottomInset: true,
      body: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 50),
              const Text(
                'Cadastro',
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
              LoginCustomTextField(
                  icon: const Icon(
                    Icons.phone_android_rounded,
                    size: 35,
                    color: healthAppRed,
                  ),
                  keyboardType: TextInputType.number,
                  hintText: 'Insira seu número',
                  labelText: 'Seu número',
                  controller: phoneNumberController,
                  obscureText: false),
              const SizedBox(height: 25),
              //
              //Email Login
              //
              LoginCustomTextField(
                icon: const Icon(Icons.mail_rounded,
                    size: 35, color: healthAppRed),
                keyboardType: TextInputType.emailAddress,
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
                keyboardType: TextInputType.number,
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
                  keyboardType: TextInputType.visiblePassword,
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
                  setState(() {});
                },
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(healthAppRed)),
                child: const Text(
                  'Entrar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 15),
              const Divider(thickness: 0.5, color: Colors.grey),
              const SizedBox(height: 15),
              GestureDetector(
                child: const Text(
                  'Já tem uma conta?',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {
                  Navigator.pop(context, 'SignupScreen');
                },
              ),
              const SizedBox(height: 35),

              const Text('www.healthpalmas.com.br'),
            ],
          ),
        ),
      ),
    );
  }
}
