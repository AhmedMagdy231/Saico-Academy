import 'package:flutter/material.dart';

import '../../../Components/Functions/functions.dart';
import '../../../Components/Text/text.dart';
import '../../../Components/components.dart';
import '../../../Constant/Colors/colors.dart';
import '../../../Cubits/App Cubit/app_cubit.dart';

class ItemWidget extends StatelessWidget {
  final double width;
  final double height;
  final AppCubit cubit;
  final int index;
  final bool isCategory;

  const ItemWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.cubit,
    required this.index,
    required this.isCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(width * 0.02),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: MyColor.primaryColor.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(12),
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
                image: isCategory
                    ? cubit.homeModel!.data!.productsCats![index].productscatPic
                    : cubit.homeModel!.data!.newProducts![index].postFilename,
                radius: 12,
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: width * 0.02),
              width: width * 0.5,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BuildText(
                        text: isCategory
                            ? cubit.homeModel!.data!.productsCats![index].productscatTitle!
                            : cubit.homeModel!.data!.newProducts![index].productName!,
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
                    text: isCategory
                        ? cleanHtmlToPlainText(cubit.homeModel!.data!.productsCats![index].productscatDescription!, maxLength: 150)
                        : cleanHtmlToPlainText(cubit.homeModel!.data!.newProducts![index].productAdvantages!, maxLength: 150),
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
}
