import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_website_task10/utilities/color_utility.dart';
import 'package:portfolio_website_task10/widgets/contact_desktop_widget.dart';
import 'package:portfolio_website_task10/widgets/contact_mobile_widget.dart';
import 'package:portfolio_website_task10/widgets/drawer_widget.dart';
import 'package:portfolio_website_task10/widgets/footer_widget.dart';
import 'package:portfolio_website_task10/widgets/main_desktop_widget.dart';
import 'package:portfolio_website_task10/widgets/main_mobile_widget.dart';
import 'package:portfolio_website_task10/widgets/nav_bar_desktop_widget.dart';
import 'package:portfolio_website_task10/widgets/nav_bar_mobile.dart';
import 'package:portfolio_website_task10/widgets/skills_desktop_widget.dart';
import 'package:portfolio_website_task10/widgets/skills_mobile_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true);

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        endDrawer: constraints.maxWidth >= 600
            ? null
            : DrawerWidget(
                oNavItemTap: (int index) {
                  scaffoldKey.currentState?.closeEndDrawer();
                  scrollToSection(index);
                },
              ),
        backgroundColor: ColorUtility.scaffoldBg,
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(key: navbarKeys.first),
              constraints.maxWidth >= 600
                  ? NavBarDesktopWidget(
                      onNavTab: (int index) {
                        scrollToSection(index);
                      },
                    )
                  : NavBarMobile(onTapMenu: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    }),
              constraints.maxWidth >= 600
                  ? const MainDesktopWidget()
                  : const MainMobileWidget(),
              constraints.maxWidth >= 600
                  ? SkillsDesktopWidget(
                      key: navbarKeys[1],
                    )
                  : SkillsMobileWidget(
                      key: navbarKeys[1],
                    ),
              //project section
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: SizedBox(
                  key: navbarKeys[2],
                  height: 500.h,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Projects',
                        style: TextStyle(
                          fontSize: maxFontSize(20.sp, 22),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              constraints.maxWidth >= 600
                  ? ContactDesktopWidget(
                      key: navbarKeys[3],
                    )
                  : ContactMobileWidget(
                      key: navbarKeys[3],
                    ),
              //footer
              const FooterWidget()
            ],
          ),
        ),
      );
    });
  }

  double maxFontSize(double fontSize, double maxSize) {
    return fontSize > maxSize ? maxSize : fontSize;
  }

  void scrollToSection(int navIndex) {
    final key = navbarKeys[navIndex];

    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(milliseconds: 400), curve: Curves.easeOut);
  }
}
