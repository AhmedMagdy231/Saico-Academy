import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saico_academy/Components/TextField/text_form_field.dart';
import 'package:saico_academy/Components/components.dart';
import 'package:saico_academy/Cubits/Subscribtion%20Cubit/sub_cubit.dart';
import 'package:saico_academy/Shared/Widgets/Course%20or%20Category%20Item/course_or_category_item_widget.dart';

import '../../Components/Functions/functions.dart';
import '../../Components/Text/text.dart';
import '../../Constant/Colors/colors.dart';
import '../../features/Instructor Products/Screens/Instructor Product Details/subscription_details_screen.dart';
import '../Subscription Details/subscription_details_screen.dart';

class StudentSubscriptionScreen extends StatelessWidget {
  const StudentSubscriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BlocConsumer<SubCubit, SubState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = SubCubit.get(context);
        return Scaffold(
         appBar: AppBar(
           title: BuildText(text: 'اشتراكاتي',),
         ),

          body: cubit.studentSubscriptionModel == null? buildLoadingWidget():
          cubit.studentSubscriptionModel!.data == null? Center(
            child: BuildText(
              text: cubit.studentSubscriptionModel!.errors.join(' '),
            ),
          ) :Padding(
            padding:  EdgeInsets.symmetric(horizontal: width*0.02),
            child: GridView.builder(
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: height*0.3,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,

                ),
                itemCount: cubit.studentSubscriptionModel!.data!.productsSubscriptions!.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Padding(
                    padding:  EdgeInsets.symmetric(vertical: height*0.0),
                    child: GestureDetector(
                      onTap: (){
                          cubit.getStudentSubscriptionDetailsData(
                              id: cubit.studentSubscriptionModel!.data!.productsSubscriptions![index].pROSUBSCRIPTIONID!,
                          );

                          navigateTo(context, StudentSubscriptionDetailsScreen(
                            name: cubit.studentSubscriptionModel!.data!.productsSubscriptions![index].productName!,
                          ));
                      },

                      child: CourseCategoryWidget(
                        height: height,
                        width: width,
                        name: cubit.studentSubscriptionModel!.data!.productsSubscriptions![index].productName!,
                        description: cubit.studentSubscriptionModel!.data!.productsSubscriptions![index].productDescription!,
                        image: '',
                        status: cubit.studentSubscriptionModel!.data!.productsSubscriptions![index].status!,
                      ),


                    ),
                  );
                },
            ),

          )
        );
      },
    );
  }


}
