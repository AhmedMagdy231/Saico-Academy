import 'package:flutter/material.dart';

import '../../../Components/components.dart';

class LoadingShimmer extends StatelessWidget {
  final double width;
  final double height;

  const LoadingShimmer({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildShimmer(
            child: Container(
              width: width,
              height: height * 0.2,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          buildShimmer(
            child: Container(
              width: width * 0.4,
              height: height * 0.03,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          buildShimmer(
            child: Container(
              height: height * 0.28,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: width * 0.5,
                        height: height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      buildShimmer(
                        child: Container(
                          width: width / 4,
                          height: height * 0.03,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: width * 0.03,
                  );
                },
              ),
            ),
          ),
          buildShimmer(
            child: Container(
              width: width * 0.4,
              height: height * 0.03,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          buildShimmer(
            child: Container(
              height: height * 0.3,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: width * 0.5,
                        height: height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      buildShimmer(
                        child: Container(
                          width: width / 4,
                          height: height * 0.03,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: width * 0.03,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

}