import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:saico_academy/Components/components.dart';
import 'package:saico_academy/Constant/Colors/colors.dart';
import 'package:saico_academy/Cubits/Subscribtion%20Cubit/sub_cubit.dart';
import 'package:saico_academy/Screens/Chapter%20Detials/widget/Table/expanded_videos_widget.dart';
import 'package:saico_academy/Screens/Chapter%20Detials/widget/expanded_files_widget.dart';
import 'package:saico_academy/Shared/Widgets/Title%20Widget/title_widget.dart';


class ChapterDetails extends StatelessWidget {

  const ChapterDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BlocConsumer<SubCubit, SubState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = SubCubit.get(context);
        return Scaffold(
          appBar: AppBar(),
          body: cubit.studentSubscriptionChapterModel == null ? buildLoadingWidget():
          SingleChildScrollView(
            child: Column(
              children: [
                TitleWidget(
                  title:  cubit.studentSubscriptionChapterModel!.data!.productsSubscriptionsChapter!.prochapterName!,
                ),

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: HtmlWidget(cubit.studentSubscriptionChapterModel!.data!.productsSubscriptionsChapter!.prochapterDescription!),
               ),
                SizedBox(
                 height: height,
                  child: ExpandableTheme(
                    data:  ExpandableThemeData(
                      iconColor: MyColor.primaryColor,
                      useInkWell: true,
                    ),
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      children:  <Widget>[
                        ExpandedFilesWidget(
                          downloadableProductsFiles: cubit.studentSubscriptionChapterModel!.data!.downloadableProductsFiles!,
                        ),

                        ExpandedVideosWidget(
                          steamableProductsFiles: cubit.studentSubscriptionChapterModel!.data!.streamableProductsFiles!,
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}





