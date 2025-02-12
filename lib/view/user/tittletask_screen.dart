import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/constants/app_colors.dart';
import 'package:to_do_app/constants/app_icons.dart';
import 'package:to_do_app/main.dart';
import 'package:to_do_app/view/user/todo_tasks_screen.dart';

class TittletaskScreen extends StatelessWidget {
  const TittletaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 243, 243),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 280),
            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TodoTasksScreen()));
                },
                child: Icon(AppIcons.icon1)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 140),
            child: Text(
              'Tittle of your Task',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Center(
              child: Container(
                height: 03.h,
                width: 350.w,
                decoration: BoxDecoration(color: Colors.blueGrey),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
                'It is a long established fact that a reader\n will be distracted by the readable content \n of a page when looking at its layout. The \n point of using Lorem Ipsum is that it has a \n more-or-less normal distribution of letters, \n as opposed to using Content here, content \n here, making it look like readable English.\n Many desktop publishing packages and \n web page editors now use Lorem Ipsum as \n their default model text, and a search for \n lorem ipsum will uncove '),
          )
        ],
      ),
    );
  }
}
