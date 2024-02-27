import 'package:animate_do/animate_do.dart';
import 'package:avatar_glow/avatar_glow.dart';

import 'package:saico_academy/Cubits/App%20Cubit/app_cubit.dart';

import 'package:saico_academy/Models/verfiyToken/verify_token.dart';
import 'package:saico_academy/Network/Local/CashHelper.dart';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import 'package:loader_overlay/loader_overlay.dart';
import 'package:searchfield/searchfield.dart';


import '../../Components/DropDownButtonField/drop_down_button_filed.dart';
import '../../Components/Text/text.dart';
import '../../Components/components.dart';
import '../../Constant/Colors/colors.dart';
import '../../Shared/Widgets/Build Login First/build_login_first.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  final myFocusNodeTimeZone = FocusNode();
  final myFocusNodeCountry = FocusNode();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    var width = MediaQuery
        .of(context)
        .size
        .width;
    
    
    String getGender(UserModel user){
      if(user.isStudent == true){
        if(user.data!.student!.studentGender == '1') {
          return 'ذكر';
        }
        else if(user.data!.student!.studentGender == '2') {
         return 'أنثي';
        }
        else{
         return  'من فضلك أختر النوع';
        }
      }
      
      return '';
    }
    
    
    
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener

        if(state is ChangeProfileLoading){
          context.loaderOverlay.show(widget: buildOverlayLoading(height));
        }
        if(state is ChangeProfileSuccess){
          context.loaderOverlay.hide();
          if(state.hasError){
            var snackBar = buildSnackBar2(
                num: 0,
                title:
                'عمليه غير ناجحه',
                message: state.errors[0]);
            ScaffoldMessenger.of(
                context)
                .showSnackBar(snackBar);
          }
          else{

            var snackBar = buildSnackBar2(
                num: 1,
                title:
                'عمليه ناجحه',
                message: state.messages![0]);
            ScaffoldMessenger.of(
                context)
                .showSnackBar(snackBar);

          }
        }

      },
      builder: (context, state) {
        var cubit = AppCubit.get(context);

        return buildGlobOverLay(
          widget: Scaffold(
            body:  CashHelper.getData(key: 'login') == null?
            BuildLoginFirst(width:width, height:height, context:context)
                : cubit.userModel == null? buildLoadingWidget() : SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: height * 0.25,
                    child: Stack(
                      children: [
                        ClipPath(
                          clipper: ContainerCliper(),
                          child: Container(
                            width: width,
                            height: height * 0.17,
                            decoration: BoxDecoration(
                              color: MyColor.primaryColor,

                            ),
                          ),
                        ),
                        SizedBox(
                          width: width,
                          height: height * 0.1,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: BuildText(
                              text: '',
                              bold: true,
                              size: 25,
                              color: Colors.white,
                              center: true,
                            ),
                          ),
                        ),
                        Positioned(
                          top: height * 0.005,
                          left: width / 2 - width * 0.3,

                          child: AvatarGlow(
                            glowColor: Colors.white,
                            endRadius: width*0.3,
                            duration: const Duration(milliseconds: 1500),
                            repeat: true,
                            showTwoGlows: true,
                            repeatPauseDuration:const Duration(milliseconds: 100),
                            child: GestureDetector(
                              onTap: () {
                                //
                                showDialog(
                                    context: context,
                                    builder: (_){
                                      return AlertDialog(

                                        contentPadding: EdgeInsets.zero,
                                        shape:const  RoundedRectangleBorder(
                                          borderRadius: BorderRadius.zero, // Set the border radius to zero
                                        ),

                                        content: Hero(
                                          tag: 'hom',
                                          child: SizedBox(
                                            child: cubit.image == null ?
                                            Image.network(
                                              cubit.userModel!.data!.student!.studentProfilepicture!,
                                              fit: BoxFit.cover,
                                            )
                                                : Image.file(
                                              cubit.image!,
                                              fit: BoxFit.contain,

                                            ),
                                          ),
                                        ),
                                        actionsPadding: EdgeInsets.symmetric(vertical: height*0.005),
                                        actions: [
                                          Center(
                                            child: buildButton(
                                              width: width*0.3,
                                              height: height*0.05,
                                              function: (){
                                                cubit.pickImage(ImageSource.gallery);
                                              },
                                              text: 'تغير الصوره',
                                              size: 12,
                                            ),
                                          ),
                                        ],
                                      );
                                    }
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: MyColor.primaryColor,
                                ),
                                padding: EdgeInsets.all(width * 0.015),
                                child: cubit.image == null ? FadeInDown(
                                  from: height*0.02,
                                  child: CircleAvatar(
                                    radius: width * 0.18,
                                    backgroundImage: NetworkImage(
                                        cubit.userModel!.data!.student!.studentProfilepicture!),
                                  ),
                                ) : FadeInDown(
                                  from: height*0.02,
                                  child: CircleAvatar(
                                    radius: width * 0.18,
                                    backgroundImage: FileImage(cubit.image!),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Positioned(
                        //   top: height*0.25,
                        //   left: width/2 + width*0.1,
                        //   child: Container(
                        //     width: 40,
                        //     decoration: BoxDecoration(
                        //       shape: BoxShape.circle,
                        //       color: Colors.grey,
                        //     ),
                        //     child: IconButton(
                        //       onPressed: (){},
                        //       icon: Icon(Icons.edit,color: Colors.white,size: 30,),
                        //       padding: EdgeInsets.all(0),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        textDirection: TextDirection.rtl,
                        children: [
                          Container(
                            width: width,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: BuildText(
                                text: cubit.userModel!.data!.student!.studentFullname!,
                                bold: true,
                                size: 25,
                                center: true,
                              ),
                            ),
                          ),

                          SizedBox(
                            height: height * 0.02,
                          ),
                          buildEditTextFormField(
                              cubit: cubit,
                              height: height,
                              title: 'الاسم',
                              controller: cubit.nameController,
                              valid: (value){
                                if(value!.isEmpty){
                                  return 'من فضلك ادخل الاسم';
                                }
                              }
                          ),
                          buildEditTextFormField(
                              cubit: cubit,
                              height: height,
                              title: 'البريد الاكتروني',
                              controller: cubit.emailController,
                              valid: (value){
                                if(value!.isEmpty){
                                  return 'من فضلك ادخل البريد الاكتروني';
                                }
                              }
                          ),
                          buildEditTextFormField(
                              cubit: cubit,
                              height: height,
                              title: 'رقم الهاتف',
                              controller: cubit.phoneController,
                              valid: (value){
                                if(value!.isEmpty){
                                  return 'من فضلك ادخل رقم الهاتف';
                                }
                              }
                          ),

                          buildTitle(height:height, text: 'النوع'),
                          BuildDropDownButtonField(
                            height: height,
                            width: width,
                            hint:  getGender(cubit.userModel!),
                            valid: cubit.typeController.text != '0'? null :  (value) {
                              if (value == null) {
                                return 'من فضلك أختر النوع';
                              }
                            },
                            item: ['ذكر','أنثي'],

                            onChanged: (value){
                              if(value == 'ذكر'){
                                cubit.typeController.text = '1';
                              }
                              else
                                {
                                  cubit.typeController.text = '2';
                                }
                            },
                          ),

                         SizedBox(height: height*0.02,),

                          buildTitle(height:height, text: 'الدولة'),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: SearchField(
                              focusNode: myFocusNodeCountry,
                              controller: cubit.countryController,
                              suggestions: cubit.countriesModel!.data!.countriesList
                                  .map((e

                                  ) => SearchFieldListItem(e
                                  ,child: Container(
                                    color: Colors.grey.shade200,
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal:16.0),
                                        child: BuildText(
                                          text: e,
                                        )
                                      ),
                                    ),
                                  ))).toList(),
                              suggestionState: Suggestion.expand,
                              textInputAction: TextInputAction.next,
                              hint: 'أبحث عن الدولة',
                              searchStyle:GoogleFonts.notoSansArabic(
                                color: Colors.black87,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),


                              // autovalidateMode: AutovalidateMode.always,
                              validator: (x) {
                                if (x!.isEmpty) {
                                  return 'من فضلك أختر الدولة';
                                }
                                return null;
                              },
                              searchInputDecoration: InputDecoration(
                                contentPadding: EdgeInsets.all(width*0.055),
                                prefixIcon: Icon(Icons.home_filled,color: MyColor.primaryColor,),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.black.withOpacity(0.8),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(color: Colors.red),
                                ),
                              ),
                              maxSuggestionsInViewPort: 6,
                              itemHeight: 50,
                              onTap: (){
                              },
                              onSubmit: (value){
                              },
                              onSuggestionTap: (value){

                                int index = cubit.countriesModel!.data!.countriesList.indexWhere((element) => element == value.searchKey);
                               cubit.countryController.text = cubit.countriesModel!.data!.countries![index].value!;
                                FocusScope.of(context).unfocus();

                              },
                            ),
                          ),

                          SizedBox(height: height*0.02,),

                          buildTitle(height:height, text: 'المنطقة الزمنية'),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: SearchField(
                              focusNode: myFocusNodeTimeZone,
                              controller: cubit.timeZoneController,
                              suggestions: cubit.timeZoneModel!.data!.timeZoneList
                                  .map((e

                                  ) => SearchFieldListItem(e
                                  ,child: Container(
                                    color: Colors.grey.shade200,
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal:16.0),
                                          child: BuildText(
                                            text: e,
                                          )
                                      ),
                                    ),
                                  ))).toList(),
                              suggestionState: Suggestion.expand,
                              textInputAction: TextInputAction.next,
                              hint: 'أبحث عن المنطقة الزمنية',
                              searchStyle:GoogleFonts.notoSansArabic(
                                color: Colors.black87,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),

                              validator: (x) {
                                if (x!.isEmpty) {
                                  return 'من فضلك أختر المنطقة الزمنية';
                                }
                                return null;
                              },
                              searchInputDecoration: InputDecoration(
                                contentPadding: EdgeInsets.all(width*0.055),
                                prefixIcon: Icon(Icons.watch_later_outlined,color: MyColor.primaryColor,),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.black.withOpacity(0.8),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(color: Colors.red),
                                ),
                              ),
                              maxSuggestionsInViewPort: 6,
                              itemHeight: 50,
                              onTap: (){
                              },
                              onSuggestionTap: (value){

                                int index = cubit.timeZoneModel!.data!.timeZoneList.indexWhere((element) => element == value.searchKey);
                                cubit.timeZoneController.text = cubit.timeZoneModel!.data!.timeZones![index].value!;
                                FocusScope.of(context).unfocus();

                              },
                            ),
                          ),


                          SizedBox(height: height*0.02,),
                          Center(
                            child: buildButton(
                              width: width * 0.6,
                              height: height * 0.05,
                              function: () {
                                if(formKey.currentState!.validate()){
                                  cubit.postChangeProfile(
                                    student_country: cubit.countryController.text,
                                    student_phone: cubit.phoneController.text,
                                    student_timeZone: cubit.timeZoneController.text,
                                    student_type: cubit.typeController.text,
                                    student_name: cubit.nameController.text,
                                    student_email: cubit.emailController.text,
                                  );
                                }
                              },
                              text: 'تعديل',
                              size: 20,
                            ),
                          ),
                          SizedBox(height: height * 0.03,),

                          if(myFocusNodeTimeZone.hasFocus || myFocusNodeCountry.hasFocus)
                             SizedBox(
                              height: height*0.2,
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Padding buildTitle({required height,required String text}) {
    return Padding(
                          padding: EdgeInsets.symmetric(vertical: height * 0.01),
                          child: BuildText(
                            text: text,
                            bold: true,
                            size: 15,
                            color: MyColor.primaryColor,
                          ),
                        );
  }



  Widget buildEditTextFormField({
    required AppCubit cubit,
    required double height,
    required controller,
    required title,
    required String? Function(String?)? valid,
    Function()? ontap,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.01),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: BuildText(
              text: title,
              bold: true,
              size: 15,
              color: MyColor.primaryColor,
            ),
          ),
          TextFormField(
            onTap: ontap,
            validator: valid,
            controller: controller,
            style: GoogleFonts.notoSansArabic(
              //  fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(height * 0.02),
              //  prefixIcon: Icon(FontAwesomeIcons.user,color: MyColor.primaryColor,),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: MyColor.primaryColor.withOpacity(0.5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
