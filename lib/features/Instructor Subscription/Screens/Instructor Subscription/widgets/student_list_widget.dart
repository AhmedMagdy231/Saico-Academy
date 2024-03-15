import 'package:flutter/material.dart';
import 'package:saico_academy/features/Instructor%20Subscription/Cubit/instructor_sub_cubit.dart';
import 'package:saico_academy/features/Instructor%20Subscription/Model/instructor_subscription_model.dart';

import '../../../../../Components/Text/text.dart';
import '../../../../../Components/components.dart';
import '../../Instructor Subscription Details/instructor_subscription_detials_screen.dart';

class StudentOfCoursesWidget extends StatelessWidget {
  final List<ProductsSubscriptions> productsSubscriptions;

  const StudentOfCoursesWidget({
    super.key,
    required this.productsSubscriptions,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.27,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productsSubscriptions.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              InstructorSubCubit.get(context).getInstructorSubscriptionDetailsData(
                  id: productsSubscriptions[index].pROSUBSCRIPTIONID!,
              );
              navigateTo(context, InstructorSubscriptionDetailsScreen());
            },
            child: buildItem(
              image: productsSubscriptions[index].studentProfilepicture!,
              name: productsSubscriptions[index].studentFullname!,
              courseName: productsSubscriptions[index].productName!,
              width: width,
              height: height,
              status: productsSubscriptions[index].status!,
            ),
          );
        },
      ),
    );
  }

  Padding buildItem(
      {required String image,
      required String name,
      required String courseName,
        required height,
        required String status,
      required width}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 55,
              backgroundImage: NetworkImage(image),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            BuildText(
              text: name,
              center: true,
              maxLines: 1,
              bold: true,
            ),
            BuildText(
              text: courseName,
              color: Colors.grey,
              center: true,
              size: 13,
              maxLines: 1,
            ),
            SizedBox(height: height*0.01,),
            BuildText(
              text: status,
              color: status == 'نشطة'? Colors.green:Colors.red,
              center: true,
              size: 13,

              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
