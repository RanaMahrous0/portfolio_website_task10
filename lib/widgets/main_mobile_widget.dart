import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainMobileWidget extends StatelessWidget {
  const MainMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 1.6,
      constraints: const BoxConstraints(minHeight: 570),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/welcome.png',
            width: MediaQuery.sizeOf(context).width,
          ),
          SizedBox(
            height: 10.h,
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Hi, \nI’m Rana \nA freelance Flutter Designer',
              style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.w600, height: 1.4),
            ),
          )
        ],
      ),
    );
  }
}
