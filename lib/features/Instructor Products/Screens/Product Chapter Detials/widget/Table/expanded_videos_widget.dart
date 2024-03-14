import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:saico_academy/features/Instructor%20Products/Models/Instructor%20Product%20Chapter%20Details/intstructor_chapter_details_model.dart';
import 'package:saico_academy/features/Instructor%20Products/Screens/Product%20Chapter%20Detials/widget/Table/video_table_widget.dart';

import '../../../../../../Components/Text/text.dart';
import '../../../../../../Constant/Colors/colors.dart';





class ExpandedVideosWidget extends StatelessWidget {
  final List<StreamableProductsFiles> steamableProductsFiles;
  const ExpandedVideosWidget({super.key, required this.steamableProductsFiles});

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
                    'assets/images/image_video.jpg',
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
                        text: 'فيديوهات الباب',
                        bold: true,

                      ),
                    ),
                    collapsed: const SizedBox(),

                    expanded: TableVideosWidget(
                      steamableProduuctsFiles: steamableProductsFiles,
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



