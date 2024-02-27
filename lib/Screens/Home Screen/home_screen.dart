import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import 'package:saico_academy/Constant/Colors/colors.dart';
import 'package:saico_academy/Cubits/App%20Cubit/app_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Components/Functions/functions.dart';
import '../../Components/Text/text.dart';
import '../../Components/components.dart';
import '../Category Details/category_details.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  CarouselController _carouselController = CarouselController();

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
                BuildSlider(width, height, _carouselController, cubit),
                SizedBox(
                  height: height * 0.02,
                ),
                buildAnimatedSmoothIndicator(cubit),
                SizedBox(
                  height: height * 0.02,
                ),

                buildCategoryText(text: 'تصنيف الكورسات',width: width,height: height),
                buildListViewItem(height: height,width: width,cubit: cubit,cat: true),
                cubit.homeModel!.data!.newProducts!.length ==0? SizedBox():
                buildCategoryText(text: 'آخر البرامج',width: width,height: height),
                buildListViewItem(height: height,width: width,cubit: cubit,cat: false),
              ],
            )
                : buildLoading(width, height),
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
            child: buildItem(width, height, cubit, index,cat),
          );
        },
      ),
    );
  }

  Padding buildItem(double width, double height, AppCubit cubit, int index,bool cat) {
    return Padding(
      padding: EdgeInsets.all(width * 0.02),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: MyColor.primaryColor.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: height * 0.2,
              width: width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: buildImage(
                  image: cat?
                  cubit.homeModel!.data!.productsCats![index].productscatPic :
                  cubit.homeModel!.data!.newProducts![index].postFilename,
                  radius: 12
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
         Container(
           padding: EdgeInsets.symmetric(horizontal: width*0.02),
           width: width*0.5,
           child: Column(
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        BuildText(
                          text: cat?
                          cubit.homeModel!.data!.productsCats![index].productscatTitle! :
                          cubit.homeModel!.data!.newProducts![index].productName!,
                          size: 13,
                          bold: true,
                          center: true,

                        ),
                      ],
                    ),

               SizedBox(
                 height: height * 0.005,
               ),
               BuildText(
                 text:  cat?cleanHtmlToPlainText(cubit.homeModel!.data!.productsCats![index].productscatDescription!,maxLength: 150)
                     :cleanHtmlToPlainText(cubit.homeModel!.data!.newProducts![index].productAdvantages!,maxLength: 150),
                 maxLines: 2,
                 overflow: true,
                 size: 11,
               ),

             ],
           ),
         ),
          ],
        ),
      ),
    );
  }

  Padding buildCategoryText({required double width,required double height,required String text}) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: width*0.03,vertical: height*0.01),
      child:  Row(
        children: [
          Expanded(
            child: SizedBox(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: width*0.02),
                child: Divider(
                  thickness: 1,
                  color: MyColor.primaryColor.withOpacity(0.5),
                ),
              ),
            ),
          ),
          BuildText(
            text: text,
            size: 18,
            color: MyColor.primaryColor,
            bold: true,

          ),
          Expanded(
            child: SizedBox(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: width*0.02),
                child: Divider(
                  thickness: 1,
                  color: MyColor.primaryColor.withOpacity(0.5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container BuildSlider(
      double width,
      double height,
      CarouselController _carouselController,
      AppCubit cubit
      ) {
    return Container(
      width: width,
      height: height * 0.2,
      child: CarouselSlider.builder(
        carouselController: _carouselController,
        itemCount: cubit.homeModel!.data!.slides!.length,
        itemBuilder: (context, index, realIndex) {
          return Container(
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: buildImage(
                image: cubit.homeModel!.data!.slides![index].slidePic!,
                radius: 10),
          );
        },
        options: CarouselOptions(
          onPageChanged: (index, reason) {
            cubit.changeIndexSlider(index);
          },
          aspectRatio: 16 / 9,
          viewportFraction: 0.80,
          initialPage: cubit.yourActiveIndexSlider,
          enableInfiniteScroll: true,
          //reverse: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
          enlargeStrategy: CenterPageEnlargeStrategy.scale,
        ),
      ),
    );
  }

  Widget buildAnimatedSmoothIndicator(AppCubit cubit) {
    return Center(
      child: AnimatedSmoothIndicator(
        activeIndex: cubit.yourActiveIndexSlider,
        count: cubit.homeModel!.data!.slides!.length,
        effect: ExpandingDotsEffect(
          spacing: 5.0,
          radius: 12.0,
          dotWidth: 10.0,
          dotHeight: 10.0,
          paintStyle: PaintingStyle.fill,
          strokeWidth: 12,
          dotColor: Colors.grey,
          activeDotColor: MyColor.primaryColor,
        ),
      ),
    );
  }

  Padding buildLoading(double width, double height) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildShimmer(
            child: Container(
              width: width,
              height: height * 0.2,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          buildShimmer(
            child: Container(
              width: width * 0.4,
              height: height * 0.03,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          buildShimmer(
            child: Container(
              height: height * 0.28,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: width * 0.5,
                        height: height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      buildShimmer(
                        child: Container(
                          width: width / 4,
                          height: height * 0.03,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: width * 0.03,
                  );
                },
              ),
            ),
          ),
          buildShimmer(
            child: Container(
              width: width * 0.4,
              height: height * 0.03,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          buildShimmer(
            child: Container(
              height: height * 0.3,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: width * 0.5,
                        height: height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      buildShimmer(
                        child: Container(
                          width: width / 4,
                          height: height * 0.03,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: width * 0.03,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

}






// Usage

