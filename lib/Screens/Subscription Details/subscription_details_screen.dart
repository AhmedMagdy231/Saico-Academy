import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saico_academy/Components/Text/text.dart';
import 'package:saico_academy/Components/components.dart';
import 'package:saico_academy/Constant/Colors/colors.dart';
import 'package:saico_academy/Cubits/App%20Cubit/app_cubit.dart';

import 'package:saico_academy/Screens/Subscription%20Details/widget/tabel_widget.dart';

import '../../Cubits/Subscribtion Cubit/sub_cubit.dart';
import '../../Shared/Widgets/Title Widget/title_widget.dart';


class StudentSubscriptionDetailsScreen extends StatelessWidget {
  final String name;
  const StudentSubscriptionDetailsScreen({Key? key,required this.name}) : super(key: key);

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
              title: BuildText(text: name,),
            ),

          body: cubit.studentSubscriptionDetailsModel == null? buildLoadingWidget():
          SingleChildScrollView(

            child: Column(
              children: [
                SizedBox(height: height*0.02,),
              const TitleWidget(
                title: 'تفاصيل الأشتراك',
              ),
                TableDetailsSubscriptionWidget(
                    productsSubscription: cubit.studentSubscriptionDetailsModel!.data!.productsSubscription!,
                ),


               SizedBox(height: height*0.02,),

                const TitleWidget(
                  title: 'أبواب الكورس',
                ),
                TableChapterWidget(

                  studentSubscriptionDetailsModel: cubit.studentSubscriptionDetailsModel!,
                  cubit: cubit,
                ),
              ],
            ),
          ),


            );

      },
    );
  }
}


