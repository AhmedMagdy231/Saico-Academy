import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saico_academy/Components/components.dart';
import 'package:saico_academy/Network/Local/CashHelper.dart';
import 'package:saico_academy/Network/endPoind.dart';
import 'package:saico_academy/Screens/PDF/view_pdf.dart';

import '../../../../Components/Text/text.dart';
import '../../../../Cubits/Subscribtion Cubit/sub_cubit.dart';
import '../../../../Models/Studnet Subscription Chapter/student_subscription_chapter_model.dart';
import '../../../Subscription Details/widget/tabel_widget.dart';

class TableFilesWidget extends StatelessWidget {

  final List<DownloadableProductsFiles> downloadableProductsFiles;
  const TableFilesWidget({Key? key,required this.downloadableProductsFiles}) : super(key: key);

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
          buildColumn('	فتح الملف'),

        ],
        rows: [
          ...downloadableProductsFiles
              .map<DataRow>(
                (e) => DataRow(
              cells: [

                buildCellRow(e.profileTitle!),
                buildCellRowButtonFile(filename: e.filePath!,context: context),
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
           navigateTo(context,  PDFViewerScreen(
             pdfPath: getPath(
                 filename: filename,
                 token: CashHelper.getData(key: 'token'),
                 baseUrl: saicoUrl
             ),
           ));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          child: BuildText(
            text: 'فتح',
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}

String getPath({required String filename, required token, required baseUrl}){
 String url = '${baseUrl}${filename}?student_accesstoken=${token}';
  return url;
}
