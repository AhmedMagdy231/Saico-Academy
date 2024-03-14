import 'package:flutter/material.dart';
import 'package:saico_academy/Components/components.dart';
import 'package:saico_academy/Screens/PDF/view_pdf.dart';

import '../../../Components/Text/text.dart';
import '../../../Constant/Colors/colors.dart';

class PDFButton extends StatelessWidget {
  final String text;
  final String path;
  const PDFButton({Key? key,required this.path,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      style: ElevatedButton.styleFrom(

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          // Adjust the value according to your requirement
        ),
        backgroundColor: MyColor.primaryColor,
      ),

      onPressed: () {
       navigateTo(context, PDFViewerScreen(pdfPath: path,));
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.picture_as_pdf,color: Colors.white,), // Icon
          const SizedBox(width: 8), // Space between icon and text
          BuildText(text: text,color: Colors.white,bold: true,), // Text
        ],
      ),
    );
  }
}
