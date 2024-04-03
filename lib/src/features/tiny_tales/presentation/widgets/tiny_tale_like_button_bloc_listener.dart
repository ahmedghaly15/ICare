import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_state.dart';

class TinyTaleLikeButtonBlocListener extends StatelessWidget {
  const TinyTaleLikeButtonBlocListener({
    super.key,
    required this.tinyTaleId,
    required this.isTinyTaleContainsImage,
  });

  final String? tinyTaleId;
  final bool isTinyTaleContainsImage;

  @override
  Widget build(BuildContext context) {
    return BlocListener<TinyTalesCubit, TinyTalesState>(
      listenWhen: (_, current) =>
          current is LikeTinyTaleSuccess || current is UnlikeTinyTaleSuccess,
      listener: (context, state) {
        state.whenOrNull(
          likeTinyTaleSuccess: () {
            context.read<TinyTalesCubit>().getPeopleWhoLiked(tinyTaleId!);
          },
          unlikeTinyTaleSuccess: () {
            context.read<TinyTalesCubit>().getPeopleWhoLiked(tinyTaleId!);
          },
        );
      },
      child: StreamBuilder<bool>(
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
                        LikeParams(
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
      ),
    );
  }
}
