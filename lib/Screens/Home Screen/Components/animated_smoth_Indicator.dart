import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../Constant/Colors/colors.dart';
import '../../../Cubits/App Cubit/app_cubit.dart';

class AnimatedSmoothIndicatorWidget extends StatelessWidget {
  final AppCubit cubit;

  const AnimatedSmoothIndicatorWidget({
    Key? key,
    required this.cubit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
