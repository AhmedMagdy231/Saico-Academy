import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saico_academy/Components/Text/text.dart';
import 'package:saico_academy/Components/components.dart';
import 'package:saico_academy/Shared/Widgets/Title%20Widget/title_widget.dart';
import 'package:saico_academy/features/Instructor%20Subscription/Cubit/instructor_sub_cubit.dart';
import 'package:saico_academy/features/Instructor%20Subscription/Screens/Instructor%20Subscription/widgets/student_list_widget.dart';
import 'package:saico_academy/features/Instructor%20Subscription/Screens/Instructor%20Subscription/widgets/table_of_student_widget.dart';

class InstructorSubscriptionScreen extends StatelessWidget {
  const InstructorSubscriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InstructorSubCubit, InstructorSubState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = InstructorSubCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: BuildText(
              text: 'طلابي',
            ),
          ),
          body: cubit.instructorSubscriptionModel == null? buildLoadingWidget():
           SingleChildScrollView(
            child: Column(
              children: [
                const TitleWidget(
                  title: 'طلابي',
                ),

                StudentOfCoursesWidget(
                  productsSubscriptions: cubit.instructorSubscriptionModel!.data!.productsSubscriptions!,
                ),

                const TitleWidget(
                  title: 'جدول طلابي',
                ),

                TableStudentWidget(
                  cubit: cubit,
                  productsSubscriptions: cubit.instructorSubscriptionModel!.data!.productsSubscriptions!,

                ),

              ],
            ),
          ),

        );
      },
    );
  }
}

