import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_website_task10/utilities/color_utility.dart';

class SkillsDesktopWidget extends StatelessWidget {
  const SkillsDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> skills = [
      'Flutter',
      'Dart',
      'JavaScript',
      'Python',
      'Java',
      'HTML',
      'CSS',
      'React.js',
      'Node.js',
      'R',
      'Machine Learning',
      'SQL',
      'Data Analysis',
      'Data Visualization'
    ];
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          children: [
            const Text(
              'What I Can Do',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10.h,
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: skills
                  .map((e) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 14),
                        child: Chip(
                          label: Text(
                            e,
                            style: const TextStyle(color: Colors.white),
                          ),
                          backgroundColor: ColorUtility.byLight,
                        ),
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
