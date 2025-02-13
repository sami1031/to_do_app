import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_app/constants/app_colors.dart';
import 'package:to_do_app/constants/app_icons.dart';
import 'package:to_do_app/constants/app_images.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/view/auth/forgot_screen.dart';
import 'package:to_do_app/view/auth/signup_screen.dart';
import 'package:to_do_app/view/user/add_screen.dart';
import 'package:to_do_app/widgets/buttons/commonbutton.dart';
import 'package:to_do_app/widgets/fields/common_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 243, 243),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, right: 290),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupScreen()));
                    },
                    child: Icon(AppIcons.icon1)),
              ),
              SizedBox(height: 70.h),
              Center(
                child: Text(
                  "Welcome Back!",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 16.h),
              Image.asset(AppImages.loginScreen),
              SizedBox(height: 28.h),
              CommonTextfield(
                  validator: (value) {
                    if (value == '' || value == null) {
                      return 'Please enter your email address';
                    }
                    return null;
                  },
                  hintText: 'Enter your Email address',
                  controller: emailController),
              SizedBox(height: 23.h),
              CommonTextfield(
                  validator: (value) {
                    if (value == '' || value == null) {
                      return 'Please enter your confirm password';
                    }
                    return null;
                  },
                  hintText: 'Confirm Password',
                  controller: passwordController),
              SizedBox(height: 35.h),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotScreen()));
                  },
                  child: const Text("Forgot Password?")),
              SizedBox(height: 35.h),
              Commonbutton(
                  isloading: loading,
                  titel: 'Sign In',
                  onTap: () async {
                    if (_formKey.currentState!.validate()) {
                      try {
                        setState(() {
                          loading = true;
                        });
                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text);
                        Get.to(AddScreen());
                        setState(() {
                          loading = false;
                        });
                        Get.snackbar('succes', 'login');
                      } catch (e) {
                        Get.snackbar('Error', e.toString(),
                            backgroundColor: Colors.red);
                        setState(() {
                          loading = false;
                        });
                      }
                    }
                  }),
              SizedBox(height: 35.h),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupScreen()));
                  },
                  child: const Text("Dont have an account ? Sign Up"))
            ],
          ),
        ),
      ),
    );
  }
}
