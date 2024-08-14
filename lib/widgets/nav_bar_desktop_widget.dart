import 'package:flutter/material.dart';
import 'package:portfolio_website_task10/utilities/color_utility.dart';
import 'package:portfolio_website_task10/widgets/my_logo_widget.dart';

class NavBarDesktopWidget extends StatelessWidget {
  final Function(int) onNavTab;
  const NavBarDesktopWidget({required this.onNavTab, super.key});

  @override
  Widget build(BuildContext context) {
    List<String> navTitles = ['Home', 'Skills', 'Projects', 'Contact'];
    return Container(
      height: 60,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: ColorUtility.byLight,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const MyLogoWidget(),
            const Spacer(),
            Row(
              children: navTitles
                  .asMap()
                  .entries
                  .map((e) => Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: TextButton(
                          onPressed: () {
                            onNavTab(e.key);
                          },
                          child: Text(
                            e.value,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
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
