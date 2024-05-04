import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

class FollowersOrFollowingStreamBuilder extends StatelessWidget {
  const FollowersOrFollowingStreamBuilder({
    super.key,
    this.onPressed,
    required this.title,
    required this.stream,
  });

  final VoidCallback? onPressed;
  final String title;
  final Stream<QuerySnapshot<Map<String, dynamic>>> stream;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        children: <Widget>[
          StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
            stream: stream,
            builder: (context, snapshot) {
              int streamCount = snapshot.data?.docs.length ?? 0;
              return Text(
                '$streamCount',
                style: AppTextStyles.textStyle13Regular,
              );
            },
          ),
          MySizedBox.height5,
          Text(
            title,
            style: AppTextStyles.textStyle13Regular,
          ),
        ],
      ),
    );
  }
}
