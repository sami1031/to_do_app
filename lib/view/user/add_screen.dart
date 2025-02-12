import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/constants/app_colors.dart';
import 'package:to_do_app/constants/app_icons.dart';
import 'package:to_do_app/constants/app_images.dart';
import 'package:to_do_app/view/auth/signup_screen.dart';
import 'package:to_do_app/view/user/todo_tasks_screen.dart';
import 'package:to_do_app/widgets/buttons/commonbutton.dart';
import 'package:to_do_app/widgets/fields/common_textfield.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController titleController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 243, 243),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, right: 280),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupScreen()));
                    },
                    child: Icon(AppIcons.icon1)),
              ),
              SizedBox(height: 90.h),
              Center(
                child: Text(
                  "Welcome Onboard!",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 70.h),
              Center(child: Image.asset(AppImages.addScreen)),
              SizedBox(height: 25.h),
              Text(
                'Add What your want to do later on..',
                style: TextStyle(color: AppColors.color1),
              ),
              SizedBox(height: 30.h),
              CommonTextfield(
                  validator: (value) {
                    if (value == '' || value == null) {
                      return 'Please enter your title';
                    }
                    return null;
                  },
                  hintText: 'Title',
                  controller: titleController),
              SizedBox(height: 25.h),
              CommonTextfield(
                  validator: (value) {
                    if (value == '' || value == null) {
                      return 'Please enter your title';
                    }
                    return null;
                  },
                  hintText: 'Description',
                  controller: descriptionController),
              SizedBox(height: 45.h),
              Commonbutton(
                  titel: 'Add to list',
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TodoTasksScreen()));
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
