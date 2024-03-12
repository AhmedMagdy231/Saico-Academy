import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:tab_container/tab_container.dart';

import '../../../Constant/Colors/colors.dart';
import '../../../Cubits/App Cubit/app_cubit.dart';

class MyTabContainer extends StatelessWidget {
  final double height;
  final double width;
  final AppCubit cubit;

  const MyTabContainer({
    required this.height,
    required this.width,
    required this.cubit,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.4,
      child: TabContainer(
        color: MyColor.primaryColor,
        textDirection: TextDirection.rtl,
        isStringTabs: true,
        selectedTextStyle: GoogleFonts.notoSansArabic(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        unselectedTextStyle: GoogleFonts.notoSansArabic(
          color: Colors.black,
          fontSize: 15,
        ),
        tabs:  [
          'الوصف',
          if( cubit.programDetailsModel!.data!.product!.productGoalsEnabled! =='1')'ألاهداف',
          if( cubit.programDetailsModel!.data!.product!.productAdvantagesEnabled! =='1') 'المميزات',
          if( cubit.programDetailsModel!.data!.product!.productAdvantagesEnabled! =='1')'التكوين',
        ],
        children: [
          _buildTabContent(
            height: height,
            width: width,
            htmlContent: cubit.programDetailsModel!.data!.product!.productDescription!,
          ),

         if( cubit.programDetailsModel!.data!.product!.productGoalsEnabled! =='1')
          _buildTabContent(
            height: height,
            width: width,
            htmlContent: cubit.programDetailsModel!.data!.product!.productGoals!,
          ),

          if( cubit.programDetailsModel!.data!.product!.productAdvantagesEnabled! =='1')
          _buildTabContent(
            height: height,
            width: width,
            htmlContent: cubit.programDetailsModel!.data!.product!.productAdvantages!,
          ),

          if( cubit.programDetailsModel!.data!.product!.productFormatEnabled! =='1')
          _buildTabContent(
            height: height,
            width: width,
            htmlContent: cubit.programDetailsModel!.data!.product!.productFormat!,
          ),
        ],
      ),
    );
  }

  Widget _buildTabContent({
    required double height,
    required double width,
    required String htmlContent,
  }) {
    return    SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: width*0.03,vertical: height*0.03),
        child: HtmlWidget(
          htmlContent,
          textStyle: GoogleFonts.notoSansArabic(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
