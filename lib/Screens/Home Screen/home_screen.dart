import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import 'package:saico_academy/Constant/Colors/colors.dart';
import 'package:saico_academy/Cubits/App%20Cubit/app_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:saico_academy/Screens/Home%20Screen/Components/Slider.dart';
import 'package:saico_academy/Screens/Home%20Screen/Components/loading_shimmer.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Components/Functions/functions.dart';
import '../../Components/Text/text.dart';
import '../../Components/components.dart';
import '../Category Details/category_details.dart';
import 'Components/animated_smoth_Indicator.dart';
import 'Components/build_item.dart';
import 'Components/text_address.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
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

          body: SingleChildScrollView(
            child: cubit.homeModel != null
                ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.02,
                ),

                SliderWidget(width:width, height:height, carouselController: _carouselController, cubit:cubit),
                SizedBox(
                  height: height * 0.02,
                ),

                AnimatedSmoothIndicatorWidget(cubit : cubit),
                SizedBox(
                  height: height * 0.02,
                ),

                cubit.homeModel!.data!.productsCats!.isEmpty? const SizedBox():
                CategoryTextWidget(text: 'تصنيف الكورسات',width: width,height: height),
                buildListViewItem(height: height,width: width,cubit: cubit,cat: true),

                cubit.homeModel!.data!.newProducts!.isEmpty? const SizedBox():
                CategoryTextWidget(text: 'آخر البرامج',width: width,height: height),
                buildListViewItem(height: height,width: width,cubit: cubit,cat: false),
              ],
            )
                : LoadingShimmer(width:width, height:height),
          ),
        );
      },
    );
  }

  SizedBox buildListViewItem({
    required double height,
    required AppCubit cubit,
    required double width,
    required bool cat,
  }) {
    return SizedBox(
      height: height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: cat?
        cubit.homeModel!.data!.productsCats!.length:
        cubit.homeModel!.data!.newProducts!.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              if(cat){
                //print(cubit.homeModel!.data!.productsCats![index].pRODUCTSCATID);
                cubit.postCategoryDetails(id: cubit.homeModel!.data!.productsCats![index].pRODUCTSCATID);
                // TODO
                navigateTo(context,
                  CategoryDetailsScreen(categoryName: cubit.homeModel!.data!.productsCats![index].productscatTitle!,context: context,),
                );
              }
              else{

                // TODO
                cubit.postPageDetails(id: cubit.homeModel!.data!.newProducts![index].pRODUCTID);
                // navigateTo(context,
                //   PageDetailsScreen(title: cubit.homeModel!.data!.newPages![index].pageName!),
                // );
              }
            },
            child: ItemWidget(width:width, height:height, cubit:cubit, index:index,isCategory: cat),
          );
        },
      ),
    );
  }
}






// Usage

