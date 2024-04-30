import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/widgets/pick_image_icon_button.dart';
import 'package:icare/src/features/comments/presentation/cubits/comments/comments_cubit.dart';
import 'package:icare/src/features/comments/presentation/widgets/new_comment_field_bloc_builder.dart';
import 'package:icare/src/features/comments/presentation/widgets/type_new_comment_button_bloc_consumer.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';
import 'package:image_picker/image_picker.dart';

class TypeCommentFieldAndButtons extends StatelessWidget {
  const TypeCommentFieldAndButtons({
    super.key,
    required this.tinyTale,
  });

  final TinyTale tinyTale;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        PickImageIconButton(
          icon: Icons.photo_camera,
          onPressed: () => context
              .read<CommentsCubit>()
              .pickCommentImage(ImageSource.camera),
        ),
        PickImageIconButton(
          icon: Icons.image,
          onPressed: () => context
              .read<CommentsCubit>()
              .pickCommentImage(ImageSource.gallery),
        ),
        const NewCommentFieldBlocBuilder(),
        SizedBox.square(dimension: 8.h),
        TypeNewCommentButtonBlocConsumer(tinyTale: tinyTale),
      ],
    );
  }
}
