import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:to_do_app/constants/app_icons.dart';
import 'package:to_do_app/controller/auth_controller.dart';
import 'package:to_do_app/view/auth/login_screen.dart';
import 'package:to_do_app/view/auth/onboarding.dart';
import 'package:to_do_app/view/user/add_screen.dart';
import 'package:to_do_app/widgets/buttons/commonbutton.dart';
import 'package:to_do_app/widgets/fields/common_textfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();
  AuthController authController = Get.put(AuthController());
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
                padding: const EdgeInsets.only(top: 45, left: 20, right: 330),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OnBoarding()));
                  },
                  child: Icon(
                    AppIcons.icon1,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(height: 120.h),
              Center(
                child: Text(
                  "Welcome Onboard!",
                  style:
                      TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 15.h),
              Text("Let’s help you meet up your task"),
              SizedBox(height: 47.h),
              CommonTextfield(
                  validator: (value) {
                    if (value == '' || value == null) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  hintText: "Enter your Full Name",
                  controller: nameController),
              SizedBox(height: 20.h),
              CommonTextfield(
                  validator: (value) {
                    if (value == '' || value == null) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  hintText: "Enter your Email address",
                  controller: emailController),
              SizedBox(height: 20.h),
              CommonTextfield(
                  validator: (value) {
                    if (value == '' || value == null) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  hintText: "Create a Password",
                  controller: passwordController),
              SizedBox(height: 20.h),
              CommonTextfield(
                  validator: (value) {
                    if (value == '' || value == null) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  hintText: "Confirm your Password",
                  controller: confirmpasswordController),
              SizedBox(height: 100.h),
              Commonbutton(
                  isloading: loading,
                  titel: 'Sign Up',
                  onTap: () async {
                    if (_formKey.currentState!.validate()) {
                      try {
                        setState(() {
                          loading = true;
                        });
                        await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text);
                        Get.to(AddScreen());
                        setState(() {
                          loading = false;
                        });
                        Get.snackbar('succes', 'your account is created');
                      } catch (e) {
                        Get.snackbar('Error', e.toString(),
                            backgroundColor: Colors.red);
                        setState(() {
                          loading = false;
                        });
                      }
                    }
                  }),
              SizedBox(height: 30.h),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text("Already have an account ? Sign In"))
            ],
          ),
        ),
      ),
    );
  }
}
