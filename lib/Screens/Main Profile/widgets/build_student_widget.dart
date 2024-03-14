import 'package:flutter/material.dart';

import '../../../Components/components.dart';
import '../../../Cubits/Subscribtion Cubit/sub_cubit.dart';
import '../../Profile Screen/profile_screen.dart';
import '../../Student Subscription/student_subscription_screen.dart';
import 'build_list_title.dart';

class StudentMainProfileWidget extends StatelessWidget {
  const StudentMainProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: width*0.05),
      child: Column(
        children: [
          BuildListTitle(text: 'بياناتي الشخصية', icon: Icons.person, function: (){
            navigateTo(context, ProfileScreen());
          }),
          BuildListTitle(text: 'طلباتي', icon: Icons.shopping_cart_outlined, function: (){}),

          BuildListTitle(
            text: 'اشتراكاتى',
            icon: Icons.subscriptions,
            function: (){
              SubCubit.get(context).getStudentSubscriptionData();
              navigateTo(context, StudentSubscriptionScreen());
            },
          ),

          BuildListTitle(text: 'تسجيل خروج', icon: Icons.sign_language_outlined, function: (){}),

          BuildListTitle(text: 'حذف الحساب', icon: Icons.person_off_outlined, function: (){}),

        ],
      ),
    );
  }
}
