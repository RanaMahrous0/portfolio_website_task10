import 'package:flutter/material.dart';

class MainDesktopWidget extends StatelessWidget {
  const MainDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 1.4,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hi, \nI’m Rana \nA freelance Flutter Designer',
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w600, height: 1.4),
              )
            ],
          ),
          Image.asset(
            'assets/welcome.png',
            width: MediaQuery.sizeOf(context).width / 2,
          )
        ],
      ),
    );
  }
}
