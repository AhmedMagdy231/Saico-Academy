import 'package:flutter/material.dart';
import 'package:saico_academy/Cubits/App%20Cubit/app_cubit.dart';
import 'package:saico_academy/features/Instructor%20Products/Cubit/instructor_product_cubit.dart';
import 'package:saico_academy/features/Instructor%20Subscription/Cubit/instructor_sub_cubit.dart';

import '../../../Components/Text/text.dart';
import '../../../Components/components.dart';
import '../../../Constant/Colors/colors.dart';
import '../../../Cubits/Subscribtion Cubit/sub_cubit.dart';
import '../../../Network/Local/CashHelper.dart';
import '../../../features/Instructor Products/Screens/Instructor Product/instructor_product_screen.dart';
import '../../../features/Instructor Subscription/Screens/Instructor Subscription/instructor_subscription_screen.dart';
import '../../Profile Screen/profile_screen.dart';
import '../../Student Subscription/student_subscription_screen.dart';
import 'build_list_title.dart';

class InstructorMainProfileWidget extends StatelessWidget {
  const InstructorMainProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: width*0.05),
      child: Column(
        children: [
          BuildListTitle(text: 'بياناتي الشخصية', icon: Icons.person, function: (){
            navigateTo(context, ProfileScreen());
          }),

          BuildListTitle(text: 'طلابي', icon: Icons.people, function: (){
            InstructorSubCubit.get(context).getInstructorSubscriptionData();
            navigateTo(context, InstructorSubscriptionScreen());
          }),

          BuildListTitle(
            text: 'دوراتي التدريبية',
            icon: Icons.subscriptions,
            function: (){
              InstructorProductCubit.get(context).getInstructorProductData();
              navigateTo(context, InstructorProductScreen());
            },
          ),

          BuildListTitle(text: 'تسجيل خروج', icon: Icons.sign_language_outlined, function: (){
            var snackBar = buildSnackBar2(
              num: 1,
              title: 'عمليه ناجحه',
              message: 'تم تسجيل الخروج',
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            AppCubit.get(context).logOut();

          }),


          BuildListTitle(text: 'حذف الحساب', icon: Icons.person_off_outlined, function: (){
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
                          Navigator.of(context).pop();
                          AppCubit.get(context).postDeleteAccount().then((value){


                            if(! AppCubit.get(context).deleteModel!.hasError!){

                              var snackBar =
                              buildSnackBar2(
                                  num: 1,
                                  title:
                                  'عمليه ناجحه',
                                  message: AppCubit.get(context)
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
          }),

        ],
      ),
    );
  }
}
