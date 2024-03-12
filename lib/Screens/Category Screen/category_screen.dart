import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saico_academy/Components/components.dart';
import 'package:saico_academy/Cubits/App%20Cubit/app_cubit.dart';

import '../../Components/Functions/functions.dart';
import '../../Components/Text/text.dart';
import '../../Constant/Colors/colors.dart';
import '../Category Details/category_details.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var height = MediaQuery.of(context).size.height;
        var width = MediaQuery.of(context).size.width;
        var cubit = AppCubit.get(context);
        return Scaffold(
          body:  cubit.categoryModel == null? buildLoadingWidget():
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width*0.02),
            child: GridView.builder(
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: height*0.28,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,

                ),
                itemCount: cubit.categoryModel!.data!.productsCats!.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Padding(
                    padding:  EdgeInsets.symmetric(vertical: height*0.0),
                    child: GestureDetector(
                      onTap: (){
                       cubit.postCategoryDetails(id: cubit.categoryModel!.data!.productsCats![index].pRODUCTSCATID);
                        navigateTo(
                            context,
                            CategoryDetailsScreen(
                              categoryName: cubit.categoryModel!.data!.productsCats![index].productscatTitle!,
                              context: context,
                            )
                        );
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
                                  image: cubit.categoryModel!.data!.productsCats![index].productscatPic,
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
                                        text: cubit.categoryModel!.data!.productsCats![index].productscatTitle!,
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
                                    text: cleanHtmlToPlainText(cubit.categoryModel!.data!.productsCats![index].productscatDescription!,maxLength: 150),
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
          )
        );
      },
    );
  }
}
