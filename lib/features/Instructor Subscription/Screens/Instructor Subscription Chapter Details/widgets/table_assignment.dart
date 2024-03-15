import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:saico_academy/Constant/Colors/colors.dart';
import 'package:saico_academy/features/Instructor%20Subscription/Cubit/instructor_sub_cubit.dart';
import 'package:saico_academy/features/Instructor%20Subscription/Model/instructor_subscription_chapter_model.dart';
import 'package:saico_academy/features/Instructor%20Subscription/Model/instructor_subscription_model.dart';



import '../../../../../Components/Text/text.dart';
import '../../../../../Components/components.dart';
import '../../Instructor Subscription Details/instructor_subscription_detials_screen.dart';




class TableAssignmentWidget extends StatelessWidget {
  final InstructorSubCubit cubit;
  final List<ProductsSubscriptionsAssignments> productsSubscriptionsAssignments;


  const TableAssignmentWidget({
    super.key,
    required this.productsSubscriptionsAssignments,
    required this.cubit,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width,
      child: DataTable(
        horizontalMargin: width*0.02,

        columnSpacing: width * 0.04,
        dataRowMaxHeight: height * 0.1,
        //  border: TableBorder.all(),

        columns: [



          buildColumn('العنوان'),
          buildColumn('الحالة'),
          buildColumn('فتح الملف'),
          buildColumn('بيانات اضافية'),

        ],
        rows: [
          ...productsSubscriptionsAssignments
              .map<DataRow>(
                (e) => DataRow(
              cells: [

                buildCellRow(e.prochassignTitle!),
                buildCellRow(e.status!,),


                buildCellRowFile(
                  cubit: cubit,
                  id: e.pROSUBSCRIPTIONID!,
                  context: context,
                ),

                buildCellRowDetails(
                  cubit: cubit,
                  id: e.pROSUBSCRIPTIONID!,
                  context: context,
                ),


              ],
            ),
          ).toList(),
        ],
      ),
    );
  }
}

DataColumn buildColumn(String name) {
  return DataColumn(
    numeric: true,
    label: Expanded(
      child: BuildText(
        text: name,
        bold: true,
        center: true,
        size: 15,
        // style: TextStyle(fontStyle: FontStyle.italic),
      ),
    ),
  );
}

DataCell buildCellRow(String value,{Color? color,bool? bold}) {
  return DataCell(
    Center(
      child: FadeInDown(
          from: 25,
          child: BuildText(
            text: value,
            size: 15,
            color: color,
            bold: bold,
          )
      ),
    ),
  );
}

DataCell buildCellRowDetails({
  required String id,
  required InstructorSubCubit cubit,
  required context,

}) {
  return DataCell(
    Center(
      child: FadeInDown(
        from: 25,
        child: TextButton(
          onPressed: (){



          },

          child: BuildText(
            text: 'تفاصيل',
            color: MyColor.primaryColor,
            bold: true,
          ),
        ),
      ),
    ),
  );
}


DataCell buildCellRowFile({
  required String id,
  required InstructorSubCubit cubit,
  required context,

}) {
  return DataCell(
    Center(
      child: FadeInDown(
        from: 25,
        child: TextButton(
          onPressed: (){


          },

          child: BuildText(
            text: 'فتح',
            color: MyColor.primaryColor,
            bold: true,
          ),
        ),
      ),
    ),
  );
}







