// import 'package:amori/app/screens/editemotion/state/emotion_cubit.dart';
// import 'package:amori/app/screens/emotionselection/state/tags_cubit.dart';
// import 'package:amori/app/screens/signin/state/auth_bloc.dart';
// import 'package:amori/common/assets.dart';
// import 'package:amori/domain/models/feeling/feeling.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class TagsView extends StatefulWidget {
//   final String tagName;
//   final String feelingId;
//
//   const TagsView({
//     required this.tagName,
//     required this.feelingId,
//     super.key,
//   });
//
//   @override
//   State<TagsView> createState() => _TagsViewState();
// }
//
// class _TagsViewState extends State<TagsView> {
//   var isSelected = false;
//   late String uid;
//
//   @override
//   void initState() {
//     super.initState();
//     uid = context.read<AuthBloc>().uid ?? '';
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return FilterChip(
//       selected: isSelected,
//       label: Text(widget.tagName),
//       onSelected: (value) {
//         setState(() {
//           isSelected = value;
//           context.read<TagCubit>().setTag(widget.tagName, true);
//           // context
//           //     .read<FeelingsCubit>()
//           //     .tagFeeling(uid, widget.feelingId, widget.tagName);
//         });
//       },
//     );
//   }
// }
