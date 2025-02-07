import 'package:flutter/material.dart';

class LoginnScreen extends StatefulWidget {
  const LoginnScreen({super.key});

  @override
  State<LoginnScreen> createState() => _LoginnScreenState();
}

class _LoginnScreenState extends State<LoginnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Text(
        "login Screen",
        style: TextStyle(fontSize: 30),
      ))),
    );
  }
}
