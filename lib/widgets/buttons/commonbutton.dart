import 'package:flutter/material.dart';
import 'package:to_do_app/constants/app_colors.dart';

class Commonbutton extends StatefulWidget {
  final String titel;
  final VoidCallback onTap;
  const Commonbutton({super.key, required this.titel, required this.onTap});

  @override
  State<Commonbutton> createState() => _CommonbuttonState();
}

class _CommonbuttonState extends State<Commonbutton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 44,
        width: 220,
        child: Center(
          child: Text(
            widget.titel,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
        ),
        decoration: BoxDecoration(color: AppColors.color1),
      ),
    );
  }
}
