import 'package:animate_do/animate_do.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saico_academy/Cubits/App%20Cubit/app_cubit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:saico_academy/Cubits/Subscribtion%20Cubit/sub_cubit.dart';
import 'package:saico_academy/Screens/Main%20Profile/widgets/build_instructor_widget.dart';
import 'package:saico_academy/Screens/Main%20Profile/widgets/build_list_title.dart';
import 'package:saico_academy/Screens/Main%20Profile/widgets/build_student_widget.dart';
import 'package:saico_academy/Screens/Profile%20Screen/profile_screen.dart';
import 'package:saico_academy/Screens/Student%20Subscription/student_subscription_screen.dart';

import '../../Components/Text/text.dart';
import '../../Components/components.dart';
import '../../Constant/Colors/colors.dart';
import '../../Network/Local/CashHelper.dart';
import '../../Shared/Widgets/Build Login First/build_login_first.dart';

class MainProfileScreen extends StatelessWidget {
  const MainProfileScreen({Key? key}) : super(key: key);
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
          body: CashHelper.getData(key: 'login') == null?
          BuildLoginFirst(width:width, height:height, context:context)
              : cubit.userModel == null? buildLoadingWidget(): Container(
            width: double.infinity,
            child: Column(
              children: [

                SizedBox(height: height*0.02,),

                AvatarGlow(
                  glowColor: MyColor.primaryColor,
                  endRadius: width*0.25,
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
                                  cubit.userModel!.isStudent != true? cubit.userModel!.data!.instructor!.instructorPic!:
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
                      child: cubit.image == null ? CircleAvatar(
                        radius: width * 0.18,
                        backgroundImage: NetworkImage(
                            cubit.userModel!.isStudent != true?
                            cubit.userModel!.data!.instructor!.instructorPic!:
                            cubit.userModel!.data!.student!.studentProfilepicture!
                        ),
                      ) : CircleAvatar(
                        radius: width * 0.18,
                        backgroundImage: FileImage(cubit.image!),
                      ),
                    ),
                  ),
                ),

                BuildText(
                  text:  cubit.userModel!.isStudent != true?
                  cubit.userModel!.data!.instructor!.instructorName!:
                  cubit.userModel!.data!.student!.studentFullname!,
                  color: Colors.black,
                  bold:  true,
                  size: 18,
                  maxLines: 1,

                ),
                BuildText(
                  text:
                  cubit.userModel!.isStudent != true?
                  cubit.userModel!.data!.instructor!.instructorEmail!:
                  cubit.userModel!.data!.student!.studentEmail!,
                  color: Colors.black54,

                ),


                SizedBox(height: height*0.06,),

                cubit.userModel!.isStudent == true?
                const StudentMainProfileWidget():
                const InstructorMainProfileWidget(),

              ],
            ),
          ),
        );
      },
    );
  }
}
