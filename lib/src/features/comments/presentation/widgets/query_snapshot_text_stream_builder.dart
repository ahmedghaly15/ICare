import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';

class QuerySnapshotTextStreamBuilder extends StatelessWidget {
  const QuerySnapshotTextStreamBuilder({
    super.key,
    required this.stream,
  });

  final Stream<QuerySnapshot<Map<String, dynamic>>>? stream;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: stream,
      builder: (context, snapshot) {
        int commentLikesCount = snapshot.data?.docs.length ?? 0;

        return Text(
          '$commentLikesCount',
          style: AppTextStyles.textStyle13Regular(context).copyWith(
            color: AppColors.darkGrey,
          ),
        );
      },
    );
  }
}
