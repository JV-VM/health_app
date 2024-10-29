import 'package:flutter/material.dart';
import 'package:health_app/style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _contador = 0;
  void incrementar() {
    setState(() {
      _contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: healthAppRed,
      ),
      body: Column(
        children: [
          Center(child: Text('$_contador')),
          IconButton(
              onPressed: () {
                incrementar();
              },
              icon: const Icon(Icons.plus_one))
        ],
      ),
    );
  }
}
