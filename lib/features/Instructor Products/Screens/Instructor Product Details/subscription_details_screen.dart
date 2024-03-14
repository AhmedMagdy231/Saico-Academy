import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saico_academy/Components/Text/text.dart';
import 'package:saico_academy/Components/components.dart';


import 'package:saico_academy/features/Instructor%20Products/Cubit/instructor_product_cubit.dart';
import 'package:saico_academy/features/Instructor%20Products/Screens/Instructor%20Product%20Details/widget/tabel_widget.dart';

import '../../../../Shared/Widgets/Title Widget/title_widget.dart';




class InstructorProductDetailsScreen extends StatelessWidget {
  final String name;
  const InstructorProductDetailsScreen({Key? key,required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BlocConsumer<InstructorProductCubit, InstructorProductState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = InstructorProductCubit.get(context);
        return Scaffold(
            appBar: AppBar(
              title: BuildText(text: name,),
            ),

          body: cubit.instructorProductDetailsModel == null? buildLoadingWidget():
          SingleChildScrollView(

            child: Column(
              children: [
                SizedBox(height: height*0.02,),
              const TitleWidget(
                title: 'تفاصيل الأشتراك',
              ),

                TableDetailsProductWidget(
                  product: cubit.instructorProductDetailsModel!.data!.product!,
                ),


               SizedBox(height: height*0.02,),

                const TitleWidget(
                  title: 'أبواب الكورس',
                ),
                TableChapterWidget(
                 instructorProductDetailsModel: cubit.instructorProductDetailsModel!,
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


