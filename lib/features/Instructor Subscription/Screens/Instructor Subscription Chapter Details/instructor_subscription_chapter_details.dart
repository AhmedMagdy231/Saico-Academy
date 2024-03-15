import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:saico_academy/Components/components.dart';
import 'package:saico_academy/Shared/Widgets/Title%20Widget/title_widget.dart';

import 'package:saico_academy/features/Instructor%20Subscription/Cubit/instructor_sub_cubit.dart';
import 'package:saico_academy/features/Instructor%20Subscription/Screens/Instructor%20Subscription%20Chapter%20Details/widgets/table_assignment.dart';



class InstructorSubscriptionChapterDetails extends StatelessWidget {
  const InstructorSubscriptionChapterDetails({Key? key}) : super(key: key);

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
          body: cubit.instructorSubscriptionChapterModel == null? buildLoadingWidget():
          SingleChildScrollView(
            child: Column(
              children: [

             const  TitleWidget(
                  title: 'المستوى 1',
                ),

                Padding(
                  padding:  EdgeInsets.all(width*0.02),
                  child: HtmlWidget(
                    cubit.instructorSubscriptionChapterModel!.data!.productsSubscriptionsChapter!.prochapterDescription!,
                  ),
                ),

                const  TitleWidget(
                  title: 'تكليفات الباب',
                ),

                TableAssignmentWidget(
                  cubit: cubit,
                  productsSubscriptionsAssignments: cubit.instructorSubscriptionChapterModel!.data!.productsSubscriptionsAssignments!,
                ),

              ],
            ),
          ),

        );
      },
    );
  }
}

