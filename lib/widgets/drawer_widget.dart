import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_website_task10/utilities/color_utility.dart';

class DrawerWidget extends StatelessWidget {
  final Function(int) oNavItemTap;
  const DrawerWidget({required this.oNavItemTap, super.key});

  @override
  Widget build(BuildContext context) {
    List<IconData> navIcons = [
      Icons.home,
      Icons.handyman_outlined,
      Icons.apps,
      Icons.quick_contacts_mail
    ];
    List<String> navTitles = ['Home', 'Skills', 'Projects', 'Contact'];
    return Drawer(
      backgroundColor: ColorUtility.scaffoldBg,
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.close)),
              ),
              SizedBox(
                height: 10.h,
              ),
              for (int i = 0; i < navTitles.length; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: ListTile(
                    onTap: () {
                      oNavItemTap(i);
                    },
                    leading: Icon(navIcons[i]),
                    title: Text(navTitles[i]),
                  ),
                ),
            ],
          )),
    );
  }
}
