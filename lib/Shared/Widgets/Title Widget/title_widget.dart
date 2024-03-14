import 'package:flutter/material.dart';

import '../../../Components/Text/text.dart';
import '../../../Constant/Colors/colors.dart';

class TitleWidget extends StatelessWidget {

  final title;

  const TitleWidget({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Container(
      height: height*0.06,
      color: const Color(0xffFAFAFA),
      child:  Row(
        children: [
          const VerticalDivider(
            thickness: 5,
            color: Color(0xffBB8D07),
          ),
          SizedBox(width: width*0.05,),
          BuildText(
            text: title,
            color: MyColor.primaryColor,
            bold: true,
          )

        ],
      ),
    );
  }
}
