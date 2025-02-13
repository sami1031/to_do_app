import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:to_do_app/constants/app_icons.dart';
import 'package:to_do_app/constants/app_images.dart';

import 'package:to_do_app/view/auth/login_screen.dart';
import 'package:to_do_app/widgets/buttons/commonbutton.dart';
import 'package:to_do_app/widgets/fields/common_textfield.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  final TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
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
            Form(
              key: _formKey,
              child: CommonTextfield(
                  validator: (value) {
                    if (value == '' || value == null) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  hintText: 'Forgot Password',
                  controller: emailController),
            ),
            SizedBox(height: 50.h),
            Commonbutton(
                isloading: loading,
                titel: 'Forgot',
                onTap: () async {
                  if (_formKey.currentState!.validate()) {
                    try {
                      setState(() {
                        loading = true;
                      });
                      await FirebaseAuth.instance
                          .sendPasswordResetEmail(email: emailController.text);
                      Get.snackbar('succes', 'Link send',
                          backgroundColor: Colors.green);
                      setState(() {
                        loading = false;
                      });
                    } on FirebaseAuthException catch (e) {
                      Get.snackbar('Error', 'an error ocured',
                          backgroundColor: Colors.red);

                      setState(() {
                        loading = false;
                      });
                    }
                  }
                })
          ],
        ),
      ),
    );
  }
}
