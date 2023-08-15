//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:story_app/widgets/regular_text.dart';
//
// import 'normal_text.dart';
//
// class ProfileCardWidget extends StatelessWidget {
//   final String imagePath;
//   final String name;
//   final String length;
//
//   const ProfileCardWidget(
//   {super.key,
//   required this.imagePath,
//   required this.length,
//   required this.name});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: Get.height * 0.15,
//       width: 101,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(9.52),
//           boxShadow: [
//             BoxShadow(
//               color: Color(0xff252D320D).withOpacity(0.08),
//               blurRadius: 43.8,
//               spreadRadius: 0,
//               offset: Offset(-1.9, 7.62),
//             )
//           ]),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//               height: 50,
//               child: Transform.scale(scale: 1, child: Image.asset(imagePath))),
//           SizedBox(
//             height: Get.height * 0.01,
//           ),
//           RegularText(
//             text: name,
//             color: Color(0xff00000080).withOpacity(0.3),
//           ),
//           SizedBox(
//             height: Get.height * 0.002,
//           ),
//           NormalText(
//             text: length,
//           )
//         ],
//       ),
//     );
//   }
// }