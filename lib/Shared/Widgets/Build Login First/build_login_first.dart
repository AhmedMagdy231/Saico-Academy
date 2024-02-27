import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:saico_academy/Constant/Colors/colors.dart';

import '../../../Components/Text/text.dart';
import '../../../Components/components.dart';
import '../../../Screens/Login/login_screen.dart';


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildLoginFirst extends StatelessWidget {
  final double width;
  final double height;
  final BuildContext context;

  const BuildLoginFirst({
    required this.width,
    required this.height,
    required this.context,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: width * 0.7,
            height: width * 0.7,
            child: SvgPicture.asset(
              'assets/icons/login_or_signup.svg',
              semanticsLabel: 'Acme Logo',
            ),
          ),
          BuildText(
         text:   'تسجيل دخول أو انشاء حساب اولا',
            // You might need to adjust the style of the text according to your requirements
          ),
          SizedBox(
            height: height * 0.03,
          ),

          buildButton(
              width: width * 0.8,
              height: height * 0.05,
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              text:  'اذهب لتسجيل الدخول أو الاشتراك',
              size: 15
          ),

        ],
      ),
    );
  }
}
