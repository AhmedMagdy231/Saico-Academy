import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:saico_academy/features/Instructor%20Products/Cubit/instructor_product_cubit.dart';
import 'package:saico_academy/features/Instructor%20Products/Models/Instructor%20Product%20Details/instructor_products_details.dart';
import 'package:saico_academy/features/Instructor%20Products/Screens/Product%20Chapter%20Detials/chapter_details_screen.dart';


import '../../../../../Components/Text/text.dart';
import '../../../../../Components/components.dart';




class TableChapterWidget extends StatelessWidget {

  final InstructorProductDetailsModel instructorProductDetailsModel;
  final InstructorProductCubit cubit;

  const TableChapterWidget({
    super.key,
    required this.instructorProductDetailsModel,
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



          buildColumn('العنوان'),
          buildColumn('الحالة'),
          buildColumn('بيانات اضافية'),

        ],
        rows: [
          ...instructorProductDetailsModel.data!.productsChapters!
              .map<DataRow>(
                (e) => DataRow(
              cells: [

                buildCellRow(e.prochapterName!),
                buildCellRow(e.status!),
                buildCellRowDetails(
                  cubit: cubit,
                  id: e.pROCHAPTERID!,
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
  required InstructorProductCubit cubit,
  required context,

}) {
  return DataCell(
    Center(
      child: FadeInDown(
        from: 25,
        child: ElevatedButton(
          onPressed: (){

                 cubit.getInstructorProductChapterData(id: id);
                 navigateTo(context, ChapterDetails());


          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green ,
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





class TableDetailsProductWidget extends StatelessWidget {
  final Product product;
  const TableDetailsProductWidget({Key? key,required this.product}) : super(key: key);

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
        //  buildColumn('	تاريخ الانتهاء'),
          buildColumn('	الحالة'),

        ],
        rows: [
          DataRow(
            cells: [
              buildCellRow(product.productName!),
              //buildCellRow(productsSubscription.prosubscriptionDateEnd!),
              buildCellRow(
                'نشطة',
                  color: Colors.green,
                  bold: true,
              ),

            ],
          ),

        ],
      ),
    );
  }
}

