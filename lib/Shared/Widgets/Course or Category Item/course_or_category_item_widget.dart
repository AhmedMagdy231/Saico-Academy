import 'package:flutter/material.dart';

import '../../../Components/Functions/functions.dart';
import '../../../Components/Text/text.dart';
import '../../../Components/components.dart';
import '../../../Constant/Colors/colors.dart';

class CourseCategoryWidget extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final height;
  final width;
  final String status;

  const CourseCategoryWidget({
      required this.image,
      required this.name,
      required this.description,
      required this.height,
    required this.status,
      required this.width
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: MyColor.primaryColor.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(12)),
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
                image: 'https://ectatraining.co.uk/wp-content/uploads/2018/08/background-courses.jpg',
                radius: 12),
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
                      text: name,
                      size: 13,
                      bold: true,
                      center: true,
                    ),
                    Spacer(),
                    BuildText(
                        text: status,
                      color: status == 'انتهت'? Colors.red : Colors.green,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                BuildText(
                  text: cleanHtmlToPlainText(
                     description,
                      maxLength: 150),
                  maxLines: 2,
                  overflow: true,
                  size: 11,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
