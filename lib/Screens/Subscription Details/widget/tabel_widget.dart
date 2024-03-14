import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:saico_academy/Components/components.dart';
import 'package:saico_academy/Cubits/Subscribtion%20Cubit/sub_cubit.dart';
import 'package:saico_academy/Models/Student%20Subscription%20Details/student_subscription_details.dart';
import 'package:saico_academy/Screens/Chapter%20Detials/chapter_details_screen.dart';

import '../../../Components/Text/text.dart';


class TableChapterWidget extends StatelessWidget {

  final StudentSubscriptionDetailsModel studentSubscriptionDetailsModel;
  final SubCubit cubit;

  const TableChapterWidget({
    super.key,
    required this.studentSubscriptionDetailsModel,
    required this.cubit,
});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width,
      child: DataTable(


        columnSpacing: width * 0.05,
        dataRowMaxHeight: height * 0.08,

        columns: [


          buildColumn('الرقم'),
          buildColumn('العنوان'),
          buildColumn('الحالة'),
          buildColumn('بيانات اضافية'),

        ],
        rows: [
          ...studentSubscriptionDetailsModel.data!.productsSubscriptionsChapters!
              .map<DataRow>(
                (e) => DataRow(
              cells: [
                buildCellRow(e.prosubchapStatus!),
                buildCellRow(e.prochapterName!),
                buildCellRow(e.status!),
                buildCellRowDetails(
                  cubit: cubit,
                  id: e.pROSUBCHAPID!,
                  context: context,
                  chapterEnabled: e.chapterEnabled,
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
  required SubCubit cubit,
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
                 cubit.getStudentSubscriptionChapterData(id: id);
                 navigateTo(context, ChapterDetails());

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





class TableDetailsSubscriptionWidget extends StatelessWidget {
  final ProductsSubscription productsSubscription;
  const TableDetailsSubscriptionWidget({Key? key,required this.productsSubscription}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  SizedBox(
      width: width,
      child: DataTable(
        columnSpacing: width * 0.05,
        dataRowMaxHeight: height * 0.08,

        columns: [


          buildColumn('	البرنامج'),
          buildColumn('	تاريخ الانتهاء'),
          buildColumn('	الحالة'),

        ],
        rows: [
          DataRow(
            cells: [
              buildCellRow(productsSubscription.productName!),
              buildCellRow(productsSubscription.prosubscriptionDateEnd!),
              buildCellRow(
                  productsSubscription.status!,
                  color: productsSubscription.status! == 'نشطة'? Colors.green: Colors.red,
                  bold: true,
              ),

            ],
          ),

        ],
      ),
    );
  }
}

