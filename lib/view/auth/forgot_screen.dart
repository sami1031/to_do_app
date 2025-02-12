import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/constants/app_icons.dart';
import 'package:to_do_app/constants/app_images.dart';
import 'package:to_do_app/main.dart';
import 'package:to_do_app/view/auth/login_screen.dart';
import 'package:to_do_app/widgets/buttons/commonbutton.dart';
import 'package:to_do_app/widgets/fields/common_textfield.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController forgotController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 290),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Icon(AppIcons.icon1)),
            ),
            SizedBox(height: 70.h),
            Center(
              child: Text(
                'Forgot Password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 40.h),
            Image.asset(AppImages.addScreen),
            SizedBox(height: 50.h),
            CommonTextfield(
                hintText: 'Forgot Password', controller: forgotController),
            SizedBox(height: 50.h),
            Commonbutton(
                titel: 'Forgot',
                onTap: () async {
                  await FirebaseAuth.instance
                      .sendPasswordResetEmail(email: emailController.text);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                })
          ],
        ),
      ),
    );
  }
}
