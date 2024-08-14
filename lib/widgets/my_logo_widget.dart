import 'package:flutter/material.dart';
import 'package:portfolio_website_task10/utilities/color_utility.dart';

class MyLogoWidget extends StatelessWidget {
  const MyLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Text(
              'My Portfolio',
              style: TextStyle(
                  color: ColorUtility.yellowSecondary,
                  fontWeight: FontWeight.w800),
            );
  }
}