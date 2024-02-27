import 'package:animate_do/animate_do.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:saico_academy/Components/Text/text.dart';
import 'package:saico_academy/Components/components.dart';
import 'package:saico_academy/Constant/Colors/colors.dart';
import 'package:saico_academy/Cubits/App%20Cubit/app_cubit.dart';
import 'package:saico_academy/Network/Local/CashHelper.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../generated/l10n.dart';

import '../Login/login_screen.dart';

import 'package:badges/badges.dart' as badges;

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          key: cubit.scaffoldKey,
          //drawer: buildDrawer(width, height, cubit, context),
          appBar: AppBar(

           centerTitle: true,
            title: Column(
              children: [
                SizedBox(
                  height: height*0.01,
                ),
                Image.asset(
                  'assets/images/logo.png',
                  height: height * 0.06,
                ),
                SizedBox(
                  height: height*0.01,
                ),
              ],
            ),


          ),
          body: cubit.myScreens[cubit.indexScreen],
          bottomNavigationBar: Container(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.02, vertical: height * 0.01),
              child: GNav(
                selectedIndex: cubit.indexScreen,
                backgroundColor: Colors.white,
                // tab button hover color
                haptic: true,
                // haptic feedback
                tabBorderRadius: 10,
                // tab animation curves
                duration: const Duration(milliseconds: 400),
                // tab animation duration
                gap: width * 0.03,
                // the tab button gap between icon and text
                color: Colors.grey[700],
                // unselected icon color
                activeColor: MyColor.primaryColor,
                // selected icon and text color
                textStyle: GoogleFonts.notoSansArabic(
                  fontWeight: FontWeight.bold,
                  color: MyColor.primaryColor,
                ),
                iconSize: 24,
                // tab button icon size
                tabBackgroundColor: MyColor.primaryColor.withOpacity(0.2),
                // selected tab background color
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.04, vertical: height * 0.015),
                // navigation bar padding
                tabs: const [
                  GButton(
                    icon: FontAwesomeIcons.home,
                    text: 'الرئيسة',
                  ),
                  GButton(
                    icon: FontAwesomeIcons.book,
                    text: 'الأقسام',
                  ),
                  GButton(
                    icon: FontAwesomeIcons.user,
                    text: 'حسابي',
                  ),
                  // GButton(
                  //  icon: Icons.settings,
                  //   text: 'Setting',
                  //   iconSize: 25,
                  // )
                ],
                onTabChange: (index) {

                  cubit.changeIndexScreen(index);
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
