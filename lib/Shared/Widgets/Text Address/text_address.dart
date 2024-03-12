import 'package:flutter/material.dart';

import '../../../Components/Text/text.dart';
import '../../../Constant/Colors/colors.dart';

class CategoryTextWidget extends StatelessWidget {
  final double width;
  final double height;
  final String text;

  const CategoryTextWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.03, vertical: height * 0.01),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.02),
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
                padding: EdgeInsets.symmetric(horizontal: width * 0.02),
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
}
