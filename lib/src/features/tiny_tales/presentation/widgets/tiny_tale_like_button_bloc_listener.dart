import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/features/notifications/presentation/cubits/notifications_cubit.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_state.dart';

class TinyTaleLikeButtonBlocListener extends StatelessWidget {
  const TinyTaleLikeButtonBlocListener({
    super.key,
    required this.tinyTale,
    required this.isTinyTaleContainsImage,
  });

  final TinyTale tinyTale;
  final bool isTinyTaleContainsImage;

  @override
  Widget build(BuildContext context) {
    return BlocListener<TinyTalesCubit, TinyTalesState>(
      listenWhen: (_, current) =>
          current is LikeTinyTaleSuccess || current is UnlikeTinyTaleSuccess,
      listener: (context, state) {
        state.whenOrNull(
          likeTinyTaleSuccess: () async {
            context
                .read<TinyTalesCubit>()
                .getPeopleWhoLiked(tinyTale.tinyTaleId!);
          },
          unlikeTinyTaleSuccess: () {
            context
                .read<TinyTalesCubit>()
                .getPeopleWhoLiked(tinyTale.tinyTaleId!);
          },
        );
      },
      child: StreamBuilder<bool>(
        stream: tinyTale.tinyTaleId != null
            ? context
                .read<TinyTalesCubit>()
                .isTinyTaleLikedByMe(tinyTale.tinyTaleId!)
            : const Stream<bool>.empty(),
        builder: (context, snapshot) {
          bool isTinyTaleLikedByMe = snapshot.data ?? false;

          return IconButton(
            onPressed: isTinyTaleLikedByMe
                ? () {
                    context
                        .read<TinyTalesCubit>()
                        .unlikeTinyTale(tinyTale.tinyTaleId!);
                  }
                : () {
                    if (tinyTale.user!.uId != Helper.uId) {
                      context.read<NotificationsCubit>().sendNotification(
                            to: tinyTale.user!.mobileToken!,
                            body:
                                '${Helper.currentUser!.name} liked your tiny tale',
                          );
                    }
                    context.read<TinyTalesCubit>().likeTinyTale(
                          LikeParams(tinyTaleId: tinyTale.tinyTaleId!),
                        );
                  },
            icon: SvgPicture.asset(
              isTinyTaleLikedByMe
                  ? AppAssets.svgsRedHeartIcon
                  : (isDarkModeActive(context)
                      ? AppAssets.svgsHeartIcon
                      : (isTinyTaleContainsImage
                          ? AppAssets.svgsHeartIcon
                          : AppAssets.svgsBlackHeartIcon)),
            ),
          );
        },
      ),
    );
  }
}
