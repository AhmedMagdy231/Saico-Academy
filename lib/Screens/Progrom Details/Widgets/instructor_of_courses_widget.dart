import 'package:flutter/material.dart';
import 'package:saico_academy/Models/Program%20Details/program_details_model.dart';

import '../../../Components/Text/text.dart';

class InstructorOfCoursesWidget extends StatelessWidget {
  final height;
  final width;
  final List<Instructors> instructors;

  const InstructorOfCoursesWidget({
    required this.height,
    required this.width,
    required this.instructors,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.22,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: instructors.length,
        itemBuilder: (context, index) {
          return buildItem(
              image: instructors[index].instructorPic!,
              name: instructors[index].instructorName!);
        },
      ),
    );
  }

  Padding buildItem({required String image, required String name}) {
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
            ),
          ],
        ),
      ),
    );
  }
}
