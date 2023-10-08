// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
//
// class EmotionSelectedView extends StatelessWidget {
//   final String emotion;
//   const EmotionSelectedView({
//     required this.emotion,
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return SliverToBoxAdapter(
//       child: Column(
//         children: [
//           SvgPicture.asset(
//             emotion,
//             width: double.infinity,
//             height: 200,
//           ),
//           const SizedBox(
//             height: 20.0,
//           ),
//           SizedBox(
//             width: 157,
//             height: 40,
//             child: OutlinedButton(
//               onPressed: () async {
//                 AutoRouter.of(context).pushNamed('/select-new-emotion');
//               },
//               child: Text(
//                 'Edit',
//                 style: Theme.of(context).textTheme.labelLarge?.copyWith(
//                       fontSize: 22,
//                       fontWeight: FontWeight.w400,
//                     ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
