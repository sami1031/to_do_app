import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/constants/app_images.dart';
import 'package:to_do_app/main.dart';

import 'package:to_do_app/view/auth/signup_screen.dart';
import 'package:to_do_app/widgets/buttons/commonbutton.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 202, left: 25, right: 5),
              child: Image.asset(AppImages.onBoarding),
            ),
            SizedBox(
              height: 43.h,
            ),
            Center(
              child: Text(
                'Get things done with TODo',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Text(
                'Lorem ipsum dolor sit amet,\nconsectetur adipisicing. Maxime,\ntempore! Animi nemo aut atque,\ndeleniti nihil dolorem repellendus.'),
            SizedBox(
              height: 55.h,
            ),
            Commonbutton(
                titel: 'Get Started ',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupScreen()));
                }),
          ],
        ),
      ),
    );
  }
}
