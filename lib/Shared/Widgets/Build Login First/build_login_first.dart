import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Components/Text/text.dart';
import '../../../Components/components.dart';
import '../../../Screens/Login/login_screen.dart';

Center buildLoginFirst(double width, double height, BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: width*0.7,
          height: width*0.7,
          child: SvgPicture.asset(
              'assets/images/login_or_signup.svg',
              semanticsLabel: 'Acme Logo'
          ),
        ),
        BuildText(
          text: 'تسجيل دخول أو انشاء حساب اولا',

        ),
        SizedBox(
          height: height*0.03,
        ),
        buildButton(
          width: width*0.8,
          height: height*0.05,
          function: (){
            navigateTo(
              context,
              LoginScreen(),
            );
          },
          text: 'اذهب لتسجيل الدخول أو الاشتراك',
          size: 15,

        ),
      ],
    ),
  );
}