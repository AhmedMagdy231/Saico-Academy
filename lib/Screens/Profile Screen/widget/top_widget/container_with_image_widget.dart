import 'package:animate_do/animate_do.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:saico_academy/Cubits/App%20Cubit/app_cubit.dart';
import 'package:saico_academy/Models/verfiyToken/verify_token.dart';

import '../../../../Components/Text/text.dart';
import '../../../../Components/components.dart';
import '../../../../Constant/Colors/colors.dart';

class TopWidgetProfile extends StatelessWidget {
  final AppCubit cubit;
  const TopWidgetProfile({Key? key,required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width
    ;
    return Container(
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
                                cubit.userModel!.isStudent != true?
                                cubit.userModel!.data!.instructor!.instructorPic!:
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
                        cubit.userModel!.isStudent != true?
                        cubit.userModel!.data!.instructor!.instructorPic!:
                        cubit.userModel!.data!.student!.studentProfilepicture!,
                      ),
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

        ],
      ),
    );
  }
}
