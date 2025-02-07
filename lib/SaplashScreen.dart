import 'dart:async';

import 'package:flutter/material.dart';
import 'package:to_do_app/view/auth/LoginnScreen.dart';
import 'package:to_do_app/view/auth/signup_screen.dart';

class Saplash_Screen extends StatefulWidget {
  const Saplash_Screen({super.key});

  @override
  State<Saplash_Screen> createState() => _Saplash_ScreenState();
}

class _Saplash_ScreenState extends State<Saplash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginnScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Text(
          'Splash Screen',
          style: TextStyle(fontSize: 30),
        ),
      )),
    );
  }
}
