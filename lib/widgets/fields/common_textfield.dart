import 'package:flutter/material.dart';

import 'package:to_do_app/constants/app_colors.dart';

class CommonTextfield extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const CommonTextfield({
    super.key,
    this.validator,
    required this.hintText,
    required this.controller,
  });

  @override
  State<CommonTextfield> createState() => _CommonTextfieldState();
}

class _CommonTextfieldState extends State<CommonTextfield> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 17),
      child: TextFormField(
        validator: widget.validator,
        controller: widget.controller,
        enabled: true,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(
            fontFamily: "font",
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: AppColors.color3,
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.color2, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.color2, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.color2, width: 2),
          ),
          contentPadding: EdgeInsets.all(15),
        ),
      ),
    );
  }
}
