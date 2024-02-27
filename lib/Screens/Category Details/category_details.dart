import 'package:awesome_icons/awesome_icons.dart';
import 'package:saico_academy/Components/Text/text.dart';
import 'package:saico_academy/Components/components.dart';
import 'package:saico_academy/Constant/Colors/colors.dart';
import 'package:saico_academy/Cubits/App%20Cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../Components/Functions/functions.dart';

class CategoryDetailsScreen extends StatefulWidget {
  late String categoryName;
  final context;

  CategoryDetailsScreen({required this.categoryName,required this.context});

  @override
  State<CategoryDetailsScreen> createState() => _CategoryDetailsScreenState();
}

class _CategoryDetailsScreenState extends State<CategoryDetailsScreen> {

 @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    AppCubit.get(widget.context).categoryDetailsModel!.data!.subProductsCats!.length =0;
    AppCubit.get(widget.context).categoryDetailsModel!.data!.products!.length =0;
    AppCubit.get(widget.context).postCategoryDetails(
        id: AppCubit.get(widget.context).categoryDetailsModel!.data!.productsCat!.pARENTCATID,
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener


      },
      builder: (context, state) {

        var cubit = AppCubit.get(context);

        return Scaffold(

          appBar: AppBar(
            title: BuildText(
              text: widget.categoryName == ''?
              cubit.categoryDetailsModel == null? '':cubit.categoryDetailsModel!.data!.productsCat!.productscatTitle!:widget.categoryName,
              bold: true,
            ),
          ),

          body:
          cubit.categoryDetailsModel == null?
          buildLoading(width, height):

          cubit.categoryDetailsModel!.data!.products!.isEmpty &&
          cubit.categoryDetailsModel!.data!.subProductsCats!.isEmpty?

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.bookOpen,color: MyColor.primaryColor,size: 70,),
                SizedBox(height: height*0.03,),
                BuildText(text: 'لا يوجد برامج في هذا القسم حتي الان')
              ],
            ),
          ) :
          cubit.categoryDetailsModel!.data!.subProductsCats!.isEmpty?
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width*0.02),
            child: GridView.builder(
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: height*0.28,
                    crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,

                ),
                itemCount: cubit.categoryDetailsModel!.data!.products!.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Padding(
                    padding:  EdgeInsets.symmetric(vertical: height*0.0),
                    child: GestureDetector(
                      onTap: (){
                        cubit.postPageDetails(id: cubit.categoryDetailsModel!.data!.products![index].pRODUCTID);
                        // navigateTo(
                        //   context,
                        //   // PageDetailsScreen(
                        //   //   title: cubit.categoryDetailsModel!.data!.pages![index].pageName!,
                        //   // ),
                        // );
                      },

                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: MyColor.primaryColor.withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: height * 0.2,
                              width: width * 0.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: buildImage(
                                  image: cubit.categoryDetailsModel!.data!.products![index].postFilename,
                                  radius: 12
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: width*0.02),
                              width: width*0.5,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      BuildText(
                                        text: cubit.categoryDetailsModel!.data!.products![index].productName!,
                                        size: 13,
                                        bold: true,
                                        center: true,

                                      ),
                                    ],
                                  ),

                                  SizedBox(
                                    height: height * 0.005,
                                  ),
                                  BuildText(
                                    text: cleanHtmlToPlainText(cubit.categoryDetailsModel!.data!.products![index].productDescription!,maxLength: 150),
                                    maxLines: 2,
                                    overflow: true,
                                    size: 11,
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),


                    ),
                  );
                }),
          ):
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width*0.02),
            child: GridView.builder(
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: height*0.35,
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 2,
                ),
                itemCount: cubit.categoryDetailsModel!.data!.subProductsCats!.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Padding(
                    padding:  EdgeInsets.symmetric(vertical: height*0.0),
                    child: GestureDetector(
                      onTap: (){

                        String name = cubit.categoryDetailsModel!.data!.subProductsCats![index].pagescatTitle!;
                        cubit.postCategoryDetails(id: cubit.categoryDetailsModel!.data!.subProductsCats![index].pAGESCATID);
                        navigateTo(
                          context,
                          CategoryDetailsScreen(
                            categoryName: name,
                            context: context,
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: height*0.05,
                          ),
                          Container(
                            height: height*0.2,
                            child: buildImage(
                              radius: 12,
                              image: cubit.categoryDetailsModel!.data!.subProductsCats![index].pagescatPhoto,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: BuildText(
                              text: cubit.categoryDetailsModel!.data!.subProductsCats![index].pagescatTitle!,
                              bold: true,
                              size: 12,
                              center: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        );
      },
    );
  }
}
