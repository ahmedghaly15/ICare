import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_tiny_tale_params.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';

class LikeButtonStreamBuilder extends StatelessWidget {
  const LikeButtonStreamBuilder({
    super.key,
    required this.tinyTaleId,
    required this.isTinyTaleContainsImage,
  });

  final String? tinyTaleId;
  final bool isTinyTaleContainsImage;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: tinyTaleId != null
          ? context.read<TinyTalesCubit>().isTinyTaleLikedByMe(tinyTaleId!)
          : const Stream<bool>.empty(),
      builder: (context, snapshot) {
        bool isTinyTaleLikedByMe = snapshot.data ?? false;

        return IconButton(
          onPressed: () {
            isTinyTaleLikedByMe
                ? context.read<TinyTalesCubit>().unlikeTinyTale(tinyTaleId!)
                : context.read<TinyTalesCubit>().likeTinyTale(
                      LikeTinyTaleParams(
                        tinyTaleId: tinyTaleId!,
                        context: context,
                      ),
                    );
          },
          icon: SvgPicture.asset(
            isTinyTaleLikedByMe
                ? AppAssets.svgsRedHeartIcon
                : (isTinyTaleContainsImage
                    ? AppAssets.svgsHeartIcon
                    : AppAssets.svgsBlackHeartIcon),
          ),
        );
      },
    );
  }
}
