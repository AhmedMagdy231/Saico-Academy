import 'package:animate_do/animate_do.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../Components/Text/text.dart';
import '../../Components/components.dart';
import '../../Constant/Colors/colors.dart';
import '../../Cubits/App Cubit/app_cubit.dart';
import '../../Network/Local/CashHelper.dart';

import '../Login/login_screen.dart';

Drawer buildDrawer(double width, double height, AppCubit cubit,context) {

  return  Drawer(
    backgroundColor: Colors.white,
    child:
    Column(
      children: [
        Container(
          width: width,
          height: height*0.28,
          decoration: BoxDecoration(
            color:  MyColor.primaryColor,
            // image: const DecorationImage(
            //   image: AssetImage(
            //     'assets/images/search.png',
            //   ),
            //   fit: BoxFit.cover,
            // ),
          ),
          child: CashHelper.getData(key: 'login') == null?
          buildLoginFirstDrawer(width, height, context) :
          cubit.userModel == null ? buildLoadingWidget():
          Column(
            children: [
              SizedBox(height: height*0.05,),
              Container(
                padding: EdgeInsets.all(2),
                decoration: const  BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      cubit.userModel!.isStudent != true?
                      cubit.userModel!.data!.instructor!.instructorPic!:
                      cubit.userModel!.data!.student!.studentProfilepicture!
                  ),
                ),
              ),
              SizedBox(
                height: height*0.01,
              ),
              BuildText(
                text:  cubit.userModel!.isStudent != true?
                cubit.userModel!.data!.instructor!.instructorName!:
                cubit.userModel!.data!.student!.studentFullname!,
                color: Colors.white,
                bold:  true,
                size: 18,
                maxLines: 1,

              ),
              BuildText(
                text:  cubit.userModel!.isStudent != true?
                cubit.userModel!.data!.instructor!.instructorEmail!:
                cubit.userModel!.data!.student!.studentEmail!,
                color: Colors.white38,

              ),
            ],
          ),
        ),
        buildListTile(
          text: 'حسابي',
          icon: 'assets/icons/person.svg',
          function: (){
            cubit.changeIndexScreen(2);
            Navigator.pop(context);
          },
          num: 0,
          width: width,
        ),

        buildListTile(
          text: 'الأقسام',
          icon: 'assets/icons/education.svg',
          function: (){
            cubit.changeIndexScreen(1);
            Navigator.pop(context);
          },
          num: 2,
          width: width,
        ),







        CashHelper.getData(key: 'login') == null? SizedBox():
        buildListTile(
          text: 'حذف الحساب',
          icon: 'assets/icons/delete_account.svg',
          function: (){
            showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20),),),

                    title: BuildText(text: 'حذف الحساب', size: 17,bold: true,),
                    content: BuildText(
                      text: 'حذف الحساب يترتب عليه حذف بياناتك بالكامل و تتضمن البيانات الشخصية و النقاط و طلبات الهدايا و الهدايا السابقة و لا يمكن استعادة هذه البيانات مرة أخرى ',
                      size: 13,
                    ),
                    actions: [
                      TextButton(
                        onPressed: (){

                          cubit.postDeleteAccount().then((value){
                            Navigator.pop(context);
                            Navigator.pop(context);

                            if(!cubit.deleteModel!.hasError!){

                              var snackBar =
                              buildSnackBar2(
                                  num: 1,
                                  title:
                                  'عمليه ناجحه',
                                  message: cubit
                                      .deleteModel!
                                      .messages![0]);
                              ScaffoldMessenger.of(
                                  context)
                                  .showSnackBar(snackBar);

                              CashHelper.removeData(key: 'token');
                              CashHelper.removeData(key: 'login');

                            }

                          });

                        },
                        style: TextButton.styleFrom(
                          backgroundColor:  Colors.red,
                        ),
                        child:  BuildText(
                          text: 'تأكيد',
                          size: 12,
                          color: Colors.white,
                          bold: true,
                        ),
                      ),
                      SizedBox(width: width*0.01,),
                      TextButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: MyColor.primaryColor,
                        ),
                        child: BuildText(
                          text: 'لا',
                          size: 12,
                          color: Colors.white,
                          bold: true,
                        ),
                      ),
                      SizedBox(width: width*0.02,),
                    ],

                  );
                }
            );
          },
          num: 6,
          width: width,
        ),
        CashHelper.getData(key: 'login') == null? SizedBox():
        buildListTile(
          text: 'تسجيل خروج',
          icon: 'assets/icons/logout.svg',
          function: (){
            var snackBar = buildSnackBar2(
              num: 1,
              title: 'عمليه ناجحه',
              message: 'تم تسجيل الخروج',
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            cubit.logOut();
            Navigator.pop(context);

          },
          num: 7,
          width: width,
        ),
      ],
    ),
  );
}

Center buildLoginFirstDrawer(double width, double height, context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: width*0.3,
          height: width*0.3,
          child: SvgPicture.asset(
              'assets/icons/login_or_signup.svg',
              semanticsLabel: 'Acme Logo'
          ),
        ),
        BuildText(
          text: 'تسجيل دخول أو انشاء حساب اولا',
          color: Colors.white,

        ),
        buildButton(
          color: Colors.white,
          colorText: Colors.black,
          width: width*0.4,
          height: height*0.04,
          function: (){
            Navigator.pop(context);
            navigateTo(
              context,
              LoginScreen(),
            );
          },
          text: 'تسجيل دخول',
          size: 15,
        ),
      ],
    ),
  );
}


Widget buildListTile({
  required String text,
  required String icon,
  required VoidCallback function,
  required int num,
  required width,
  Widget? notificationWidget,
}) {
  return num % 2 == 0
      ? FadeInLeft(
    from: width * 0.5,
    duration: Duration(milliseconds: 500),
    child: ListTile(
      title: BuildText(
        text: text,
      ),
      leading: SvgPicture.asset(
        icon,
        width: 25,
        color: Colors.grey.shade600,
        //semanticsLabel: 'A red up arrow'
      ),
      trailing: notificationWidget != null?
      notificationWidget
          :SizedBox(),
      onTap: function,
    ),
  )
      : FadeInRight(
    from: width * 0.5,
    duration: Duration(milliseconds: 500),
    child: ListTile(
      title: BuildText(
        text: text,
      ),
      leading: SvgPicture.asset(
        icon,
        width: 25,
        color: Colors.grey.shade600,
        //semanticsLabel: 'A red up arrow'
      ),
      trailing: notificationWidget != null?
      notificationWidget
          :SizedBox(),
      onTap: function,
    ),
  );
}


