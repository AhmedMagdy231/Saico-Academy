
import 'package:flutter/material.dart';
import 'package:saico_academy/Constant/Colors/colors.dart';

import '../../../Components/Text/text.dart';

class BuildListTitle extends StatelessWidget {

  final String text;
  final  IconData icon;
  void Function()? function;



   BuildListTitle({required this.text,required this.icon,required this.function}) ;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: function,
      title: BuildText(text: text,),
      trailing:   Directionality(
        textDirection: TextDirection.ltr,
        child: Icon(Icons.arrow_back_ios,color: MyColor.primaryColor,),
      ),
      leading: CircleAvatar(
        backgroundColor: MyColor.primaryColor.withOpacity(0.15),
          child: Icon(icon,color: MyColor.primaryColor,),
      ),
    );
  }
}
