// import 'package:flutter/material.dart';
// import 'package:lecle_yoyo_player/lecle_yoyo_player.dart';
//
// class TestScreen extends StatefulWidget {
//   const TestScreen({Key? key}) : super(key: key);
//
//   @override
//   State<TestScreen> createState() => _TestScreenState();
// }
//
// class _TestScreenState extends State<TestScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: YoYoPlayer(
//           aspectRatio: 16 / 9,
//           // Url (Video streaming links)
//           // 'https://dsqqu7oxq6o1v.cloudfront.net/preview-9650dW8x3YLoZ8.webm',
//           // "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
//           // "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8",
//           url:  "https://sfux-ext.sfux.info/hls/chapter/105/1588724110/1588724110.m3u8",
//           videoStyle: VideoStyle(
//             qualityStyle: TextStyle(
//               fontSize: 16.0,
//               fontWeight: FontWeight.w500,
//               color: Colors.white,
//             ),
//             forwardAndBackwardBtSize: 30.0,
//             playButtonIconSize: 40.0,
//             playIcon: Icon(
//               Icons.add_circle_outline_outlined,
//               size: 40.0, color: Colors.white,
//             ),
//             pauseIcon: Icon(
//               Icons.remove_circle_outline_outlined,
//               size: 40.0, color: Colors.white,
//             ),
//             videoQualityPadding: EdgeInsets.all(5.0),
//           ),
//           videoLoadingStyle: VideoLoadingStyle(
//             loading: Center(
//               child: Text("Loading video"),
//             ),
//           ),
//           allowCacheFile: true,
//           onCacheFileCompleted: (files) {
//             print('Cached file length ::: ${files?.length}');
//
//             if (files != null && files.isNotEmpty) {
//               for (var file in files) {
//                 print('File path ::: ${file.path}');
//               }
//             }
//           },
//           onCacheFileFailed: (error) {
//             print('Cache file error ::: $error');
//           },
//           onFullScreen: (value) {
//
//           }
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saico_academy/features/Instructor%20Products/Cubit/instructor_product_cubit.dart';
import 'package:saico_academy/features/Instructor%20Subscription/Cubit/instructor_sub_cubit.dart';


class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InstructorSubCubit, InstructorSubState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold();
      },
    );
  }
}

