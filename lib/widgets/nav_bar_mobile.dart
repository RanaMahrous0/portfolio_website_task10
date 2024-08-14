import 'package:flutter/material.dart';
import 'package:portfolio_website_task10/utilities/color_utility.dart';
import 'package:portfolio_website_task10/widgets/my_logo_widget.dart';

class NavBarMobile extends StatelessWidget {
  final void Function() onTapMenu;
  const NavBarMobile({required this.onTapMenu, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        color: ColorUtility.byLight,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyLogoWidget(),
            IconButton(
                onPressed: onTapMenu,
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
