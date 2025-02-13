import 'package:flutter/material.dart';
import 'package:to_do_app/constants/app_colors.dart';

class Commonbutton extends StatelessWidget {
  final String titel;
  final VoidCallback onTap;
  final bool? isloading;
  const Commonbutton(
      {super.key,
      required this.titel,
      required this.onTap,
      this.isloading = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 44,
        width: 220,
        child: Center(
          child: isloading == true
              ? CircularProgressIndicator(
                  backgroundColor: AppColors.color1,
                )
              : Text(
                  titel,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
        ),
        decoration: BoxDecoration(color: AppColors.color1),
      ),
    );
  }
}
