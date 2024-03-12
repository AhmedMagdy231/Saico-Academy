import 'package:flutter/material.dart';
import 'package:saico_academy/Components/Text/text.dart';
import 'package:saico_academy/Constant/Colors/colors.dart';
import 'package:saico_academy/Models/Program%20Details/program_details_model.dart';

class ReviewStudentWidget extends StatelessWidget {
  final height;
  final width;
  final List<ProductsReviews> reviews;
  const ReviewStudentWidget({Key? key,required this.height, required this.width,required this.reviews}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: height*0.22,
      child: ListView.builder(
        itemCount: reviews.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return buildItemReview(
            name: reviews[index].studentFullname!,
            image:  reviews[index].studentProfilepicture!,
            date:  reviews[index].reviewDate!,
            title:  reviews[index].reviewTitle!,
            review:  reviews[index].reviewTxt!,
          );
        },
      ),

    );
  }

  Container buildItemReview({
    required String name,
    required String image,
    required String date,
    required String title,
    required String review,
}) {
    return Container(
          width: width*0.8,
          margin: EdgeInsets.all(width*0.02),
          padding: EdgeInsets.all(width*0.02),
          decoration: BoxDecoration(
            border: Border.all(color: MyColor.primaryColor.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(15),
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(image),
                  ),
                  SizedBox(width: width*0.02,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BuildText(text: name),
                      BuildText(text: date,size: 15,color: Colors.grey,),
                    ],
                  ),
                ],
              ),
              SizedBox(height: height*0.02,),
              BuildText(text: title,maxLines: 1,),
              SizedBox(height: height*0.01,),
              BuildText(text: review,maxLines: 3,size: 15,),
            ],
          ),

        );
  }
}
