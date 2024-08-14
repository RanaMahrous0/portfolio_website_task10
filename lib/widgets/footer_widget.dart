import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_website_task10/utilities/color_utility.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: const Text(
                    'Made by Rana Mahrous with Flutter Version 3.22.3 ',
                    style: TextStyle(
                        color: ColorUtility.byLight,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              );
  }
}