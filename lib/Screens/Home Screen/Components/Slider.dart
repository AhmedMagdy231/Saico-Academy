import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../Components/components.dart';
import '../../../Cubits/App Cubit/app_cubit.dart';

class SliderWidget extends StatelessWidget {
  final double width;
  final double height;
  final CarouselController carouselController;
  final AppCubit cubit;

  const SliderWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.carouselController,
    required this.cubit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height * 0.2,
      child: CarouselSlider.builder(
        carouselController: carouselController,
        itemCount: cubit.homeModel!.data!.slides!.length,
        itemBuilder: (context, index, realIndex) {
          return Container(
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: buildImage(
              image: cubit.homeModel!.data!.slides![index].slidePic!,
              radius: 10,
            ),
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
}
