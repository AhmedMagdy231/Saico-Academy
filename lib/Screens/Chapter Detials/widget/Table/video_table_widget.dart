import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../Components/Text/text.dart';
import '../../../../Cubits/Subscribtion Cubit/sub_cubit.dart';
import '../../../../Models/Studnet Subscription Chapter/student_subscription_chapter_model.dart';
import '../../../Subscription Details/widget/tabel_widget.dart';

class TableVideosWidget extends StatelessWidget {
  final List<StreamableProductsFiles> steamableProduuctsFiles;
  const TableVideosWidget({Key? key,required this.steamableProduuctsFiles}) : super(key: key);

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



          buildColumn('العنوان'),
          buildColumn('تشغيل الفيديو'),

        ],
        rows: [
          ...steamableProduuctsFiles
              .map<DataRow>(
                (e) => DataRow(
              cells: [
                //buildCellRow(e.prosubchapStatus!),
                buildCellRow(e.profileTitle!),
                buildCellRowButtonFile(filename: e.profileFilename!,context: context),
              ],
            ),
          ).toList(),

        ],
      ),
    );
  }
}


DataCell buildCellRowButtonFile({required String filename,required context}) {
  return DataCell(
    Center(
      child: FadeInDown(
        from: 25,
        child: ElevatedButton(
          onPressed: (){

          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          child: BuildText(
            text: 'تشغيل',
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}