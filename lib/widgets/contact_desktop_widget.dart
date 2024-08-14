import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website_task10/utilities/color_utility.dart';
import 'package:portfolio_website_task10/widgets/my_textField_widget.dart';

class ContactDesktopWidget extends StatelessWidget {
  const ContactDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Container(
        width: double.infinity,
        color: ColorUtility.byLight,
        child: Padding(
          padding: EdgeInsets.all(10.0.r),
          child: Column(
            children: [
              Text(
                'Get In Touch',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: maxFontSize(20.sp, 22),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 700.w),
                child: Row(
                  children: [
                    const Flexible(
                      child: MyTextfieldWidget(
                        hintText: 'Your Name',
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Flexible(
                      child: MyTextfieldWidget(
                        hintText: 'Your Email',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 700.w),
                child: const MyTextfieldWidget(
                  hintText: 'Your Message',
                  maxLine: 20,
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 700.w),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorUtility.yellowPrimary,
                    ),
                    child: Text(
                      'Get In Touch',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: maxFontSize(14.sp, 17),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 300.w),
                child: const Divider(
                  color: ColorUtility.hintDark,
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Wrap(
                spacing: 12.w,
                runSpacing: 12.h,
                alignment: WrapAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                      size: 24.r,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white,
                      size: 24.r,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white,
                      size: 24.r,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.white,
                      size: 24.r,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.white,
                      size: 24.r,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  double maxFontSize(double fontSize, double maxSize) {
    return fontSize > maxSize ? maxSize : fontSize;
  }
}
