import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/extensions.dart';

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
        int count = snapshot.data?.docs.length ?? 0;

        return Text(
          '$count',
          style: AppTextStyles.textStyle13Regular.copyWith(
            color:
                context.isDarkModeActive ? Colors.white54 : AppColors.darkGrey,
          ),
        );
      },
    );
  }
}
