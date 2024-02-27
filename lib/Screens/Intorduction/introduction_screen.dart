import 'package:saico_academy/Components/Text/text.dart';
import 'package:saico_academy/Components/components.dart';
import 'package:saico_academy/Constant/Colors/colors.dart';

import 'package:saico_academy/Screens/On_Board/onboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Components/Text/text.dart';
import '../../generated/l10n.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: width,
        height: height,
        child: Stack(
          children: [
            Container(
              width: width,
              height: height/1.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              width: width,
              height: height/1.6,
              decoration: BoxDecoration(
                color: MyColor.primaryColor,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/images/logo.png',width: width*0.75,),

                  SizedBox(height: height*0.02,),

                  Image.asset('assets/images/intro.png',width: width*0.85,),


                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: width,
                height: height/2.66,
                decoration: BoxDecoration(
                  color: MyColor.primaryColor,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: width,
                height: height/2.66,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:  BorderRadius.only(topLeft: Radius.circular(70)),
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: height*0.05,horizontal: width*0.05),
                  child: Column(
                    children: [
                      BuildText(
                       text: 'مرحبا بكم في أكاديمية سايكو',
                       size: 20,
                        bold: true,
                      ),
                      SizedBox(height: height*0.02,),
                      BuildText(
                      text: "نستثمر في تعزيز مهارات طلابنا من خلال توفير محتوى تعليمي عالي الجودة وتوفير أساتذة ذي مهارات عالية للتأكد من اتقان كل طالبنا لمهارات برامجنا.",
                      center: true,
                        color: Colors.grey.shade600,
                      ),

                      Spacer(),
                      buildButton(width: width*0.6,height: height*0.06,text: 'ابدأ',size: 18,function: (){
                        navigateTo(context, OnBoardScreen());
                      }),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}
