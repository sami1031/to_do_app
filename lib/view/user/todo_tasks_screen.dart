import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:to_do_app/constants/app_colors.dart';
import 'package:to_do_app/constants/app_icons.dart';
import 'package:to_do_app/constants/app_images.dart';
import 'package:to_do_app/view/user/tittletask_screen.dart';

class TodoTasksScreen extends StatelessWidget {
  const TodoTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 243, 243),
      body: Column(
        children: [
          Container(
            height: 310.h,
            width: 424.w,
            decoration: BoxDecoration(color: Colors.blueGrey),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.color7,
                  radius: 70.r,
                  backgroundImage: AssetImage(AppImages.todoTasksScreen),
                ),
                SizedBox(height: 20.h),
                Text(
                  'Welcome Fisayomi',
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 210, top: 20),
            child: Text(
              'Todo  Tasks.',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 65.h,
            width: 336.w,
            child: ListTile(
              title: Text(
                'Title of your task',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
              ),
              subtitle: Text(
                  overflow: TextOverflow.ellipsis,
                  'Description of your task is ...l'),
              trailing: Text('6:45 pm'),
            ),
            decoration: BoxDecoration(
                color: AppColors.color4,
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            height: 9.h,
          ),
          Container(
            height: 65.h,
            width: 336.w,
            child: ListTile(
              title: Text(
                'Title of your task',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
              ),
              subtitle: Text(
                  overflow: TextOverflow.ellipsis,
                  'Description of your task is ...'),
              trailing: Text('5:36 am'),
            ),
            decoration: BoxDecoration(
                color: AppColors.color5,
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            height: 9.h,
          ),
          Container(
            height: 65.h,
            width: 336.w,
            child: ListTile(
              title: Text(
                'Title of your task',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
              ),
              subtitle: Text(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  'Description of your task is'),
              trailing: Text('3:23 pm'),
            ),
            decoration: BoxDecoration(
                color: AppColors.color6,
                borderRadius: BorderRadius.circular(10)),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(AppIcons.addicon),
          backgroundColor: AppColors.color1,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TittletaskScreen()));
          }),
    );
  }
}
