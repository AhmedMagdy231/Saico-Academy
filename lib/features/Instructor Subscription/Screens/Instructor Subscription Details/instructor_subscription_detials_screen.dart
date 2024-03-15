

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saico_academy/Components/components.dart';
import 'package:saico_academy/Shared/Widgets/Title%20Widget/title_widget.dart';
import 'package:saico_academy/features/Instructor%20Products/Cubit/instructor_product_cubit.dart';
import 'package:saico_academy/features/Instructor%20Subscription/Cubit/instructor_sub_cubit.dart';
import 'package:saico_academy/features/Instructor%20Subscription/Screens/Instructor%20Subscription%20Details/widgets/table_subscription_chapters.dart';
import 'package:saico_academy/features/Instructor%20Subscription/Screens/Instructor%20Subscription%20Details/widgets/table_subscription_details.dart';




class InstructorSubscriptionDetailsScreen extends StatelessWidget {
  const InstructorSubscriptionDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BlocConsumer<InstructorSubCubit, InstructorSubState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = InstructorSubCubit.get(context);
        return Scaffold(
          appBar: AppBar(),
          body: cubit.instructorSubscriptionDetailsModel == null? buildLoadingWidget():
           SingleChildScrollView(
            child: Column(
              children: [
               const TitleWidget(
                  title: 'تفاصيل الأشتراك',
                ),

                TableSubscriptionDetails(
                  productsSubscription: cubit.instructorSubscriptionDetailsModel!.data!.productsSubscription!,
                ),

                const TitleWidget(
                  title: 'أبواب الكورس',
                ),

                TableChapterWidget(
                  cubit: cubit,
                  productsSubscriptionsChapters: cubit.instructorSubscriptionDetailsModel!.data!.productsSubscriptionsChapters!,
                ),

              ],
            ),
          ),
        );
      },
    );
  }
}

