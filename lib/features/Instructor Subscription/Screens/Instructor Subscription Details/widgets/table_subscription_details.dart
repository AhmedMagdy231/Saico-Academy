import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:saico_academy/Constant/Colors/colors.dart';
import 'package:saico_academy/features/Instructor%20Subscription/Cubit/instructor_sub_cubit.dart';
import 'package:saico_academy/features/Instructor%20Subscription/Model/instructor_subscription_details_model.dart';
import '../../../../../Components/Text/text.dart';
import '../../../../../Components/components.dart';
import '../../Instructor Subscription Details/instructor_subscription_detials_screen.dart';




class TableSubscriptionDetails extends StatelessWidget {
 final ProductsSubscription productsSubscription;



  const TableSubscriptionDetails({
    super.key,
    required this.productsSubscription,

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



          buildColumn('#'),
          buildColumn('البرنامج'),
          buildColumn('تاريخ الانتهاء'),
          buildColumn('الحالة'),


        ],
        rows: [
           DataRow(
              cells: [

                buildCellRow(productsSubscription.pROSUBSCRIPTIONID!),
                buildCellRow(productsSubscription.productName!),
                buildCellRow(productsSubscription.prosubscriptionDateEnd!),
                buildCellRow(
                  productsSubscription.status!,
                  color: productsSubscription.status! == 'نشطة'? Colors.green: Colors.red,
                ),

              ],
            ),

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








