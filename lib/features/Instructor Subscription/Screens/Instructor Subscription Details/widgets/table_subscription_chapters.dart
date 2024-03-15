import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:saico_academy/features/Instructor%20Subscription/Cubit/instructor_sub_cubit.dart';
import 'package:saico_academy/features/Instructor%20Subscription/Model/instructor_subscription_details_model.dart';

import '../../../../../Components/Text/text.dart';
import '../../../../../Components/components.dart';
import '../../Instructor Subscription Chapter Details/instructor_subscription_chapter_details.dart';

class TableChapterWidget extends StatelessWidget {

  final List<ProductsSubscriptionsChapters> productsSubscriptionsChapters;
  final InstructorSubCubit cubit;

  const TableChapterWidget({
    super.key,
    required this.productsSubscriptionsChapters,
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
        columnSpacing: width * 0.05,
        dataRowMaxHeight: height * 0.08,

        columns: [


          buildColumn('#'),
          buildColumn('العنوان'),
          buildColumn('الحالة'),
          buildColumn('بيانات اضافية'),

        ],
        rows: [
          ...productsSubscriptionsChapters
              .map<DataRow>(
                (e) => DataRow(
              cells: [
                buildCellRow(e.pROSUBCHAPID!),
                buildCellRow(e.prochapterName!),
                buildCellRow(e.status!),
                buildCellRowDetails(
                  cubit: cubit,
                  id: e.pROSUBCHAPID!,
                  context: context,
                  chapterEnabled: e.chapterEnabled!,
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
  required int chapterEnabled,
}) {
  return DataCell(
    Center(
      child: FadeInDown(
        from: 25,
        child: ElevatedButton(
          onPressed: (){
            if(chapterEnabled == 1){
              cubit.getInstructorSubscriptionChapterData(id: id);
             navigateTo(context, InstructorSubscriptionChapterDetails());

            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: chapterEnabled == 1? Colors.green : Colors.red,
          ),
          child: BuildText(
            text: 'تفاصيل',
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}