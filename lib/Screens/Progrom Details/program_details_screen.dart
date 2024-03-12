import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saico_academy/Components/Text/text.dart';
import 'package:saico_academy/Components/components.dart';
import 'package:saico_academy/Constant/Colors/colors.dart';
import 'package:saico_academy/Cubits/App%20Cubit/app_cubit.dart';
import 'package:saico_academy/Screens/Progrom%20Details/Widgets/tab_container.dart';
import 'package:saico_academy/Shared/Widgets/Carousel%20Slider/craousel_slider.dart';
import 'package:tab_container/tab_container.dart';
import '../../Shared/Widgets/Indicator/animated_smoth_Indicator.dart';
import '../../Shared/Widgets/Text Address/text_address.dart';
import 'Widgets/instructor_of_courses_widget.dart';
import 'Widgets/review_student_widget.dart';


class ProgramDetailsScreen extends StatelessWidget {
  final String title;
   ProgramDetailsScreen({Key? key,required this.title}) : super(key: key);

  final CarouselController _carouselController = CarouselController();



  @override
  Widget build(BuildContext context) {





    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = AppCubit.get(context);

        return Scaffold(

          body: cubit.programDetailsModel == null ? buildLoadingWidget(): SafeArea(
            child: SingleChildScrollView(
              child: Column(

                children: [

                  SizedBox(height: height*0.06,),

                  if(cubit.programDetailsModel!.data!.imageSlider.length != 0)
                  CarouselSliderWidget(
                      width: width,
                      height: height,
                      carouselController: _carouselController,
                      images: cubit.programDetailsModel!.data!.imageSlider,
                      cubit: cubit
                  ),

                  SizedBox(
                    height: height * 0.02,
                  ),
                  AnimatedSmoothIndicatorWidget(cubit : cubit,length: cubit.programDetailsModel!.data!.imageSlider.length),
                  SizedBox(
                    height: height * 0.02,
                  ),


                  CategoryTextWidget(text: cubit.programDetailsModel!.data!.product!.productName!,width: width,height: height),
                  SizedBox(
                    height: height * 0.02,
                  ),

                  MyTabContainer(height: height,width: width,cubit: cubit,),

                  SizedBox(
                    height: height * 0.02,
                  ),

                  if(cubit.programDetailsModel!.data!.instructors!.length !=0)
                    Column(
                    children: [
                      CategoryTextWidget(text: 'المدربين الحاليين',width: width,height: height),
                      InstructorOfCoursesWidget(
                        height:height,
                        width: width,
                        instructors: cubit.programDetailsModel!.data!.instructors!,
                      ),
                    ],
                  ),

                  if(cubit.programDetailsModel!.data!.productsReviews!.length !=0)
                  Column(
                    children: [
                      CategoryTextWidget(text: 'التقييمات',width: width,height: height),
                      ReviewStudentWidget(
                        height: height,
                        width: width,
                        reviews: cubit.programDetailsModel!.data!.productsReviews!,
                      ),
                    ],
                  ),

                  SizedBox(height: height*0.05,),











                ],
              ),
            ),
          ),


        );
      },
    );
  }


}


List<String> names=[
  'Ahmed',
  'Ahmed Magdy',
  'Ahmed Magdy Abdelrahman',
  'Ahmed Magdy Abdelrahman mohamed',

];
