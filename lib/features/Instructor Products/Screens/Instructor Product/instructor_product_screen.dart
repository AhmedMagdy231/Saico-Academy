import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saico_academy/Components/components.dart';
import 'package:saico_academy/Shared/Widgets/Course%20or%20Category%20Item/course_or_category_item_widget.dart';
import 'package:saico_academy/features/Instructor%20Products/Cubit/instructor_product_cubit.dart';
import '../../../../Components/Text/text.dart';
import '../Instructor Product Details/subscription_details_screen.dart';



class InstructorProductScreen extends StatelessWidget {
  const InstructorProductScreen({Key? key}) : super(key: key);

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
              title: BuildText(text: 'دوراتي التدريبية',),
            ),

            body: cubit.instructorProductModel == null? buildLoadingWidget():
            cubit.instructorProductModel!.data == null? Center(
              child: BuildText(
                text: cubit.instructorProductModel!.errors.join(' '),
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
                itemCount: cubit.instructorProductModel!.data!.products!.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Padding(
                    padding:  EdgeInsets.symmetric(vertical: height*0.0),
                    child: GestureDetector(
                      onTap: (){

                        cubit.getInstructorProductDetailsData(
                          id: cubit.instructorProductModel!.data!.products![index].pROINSTRUCTID!,
                        );

                        navigateTo(context, InstructorProductDetailsScreen(
                          name: cubit.instructorProductModel!.data!.products![index].productName!,
                        ));
                      },

                      child: CourseCategoryWidget(
                        height: height,
                        width: width,
                        name: cubit.instructorProductModel!.data!.products![index].productName!,
                        description: cubit.instructorProductModel!.data!.products![index].productDescription!,
                        image: '',
                        status: cubit.instructorProductModel!.data!.products![index].status!,
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
