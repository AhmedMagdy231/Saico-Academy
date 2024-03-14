import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:saico_academy/Components/components.dart';
import 'package:saico_academy/Screens/Chapter%20Detials/widget/Table/files_table_widget.dart';

import '../../../Components/Text/text.dart';
import '../../../Constant/Colors/colors.dart';
import '../../../Models/Studnet Subscription Chapter/student_subscription_chapter_model.dart';
import '../../Subscription Details/widget/tabel_widget.dart';


class ExpandedFilesWidget extends StatelessWidget {
  final List<DownloadableProductsFiles> downloadableProductsFiles;
  const ExpandedFilesWidget({super.key, required this.downloadableProductsFiles});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            color: Colors.white,
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: height*0.2,
                  width: width,
                  child: Image.asset(
                      'assets/images/image_file.png',
                      fit: BoxFit.cover,
                  ),
                ),

                ScrollOnExpand(
                  scrollOnExpand: true,
                  scrollOnCollapse: false,

                  child: ExpandablePanel(
                    theme:  ExpandableThemeData(
                      iconColor: MyColor.primaryColor,
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToCollapse: true,
                    ),
                    header: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: width*0.03,vertical: height*0.02),
                      child: BuildText(
                        text: 'ملفات الباب',
                        bold: true,

                      ),
                    ),
                    collapsed: const SizedBox(),

                    expanded: TableFilesWidget(
                      downloadableProductsFiles: downloadableProductsFiles,
                    ),
                    builder: (_, collapsed, expanded) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Expandable(
                          collapsed: collapsed,
                          expanded: expanded,
                          theme: const ExpandableThemeData(crossFadePoint: 0),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}



