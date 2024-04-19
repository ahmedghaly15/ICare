import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_state.dart';

class BookmarkIconButtonBlocListener extends StatelessWidget {
  const BookmarkIconButtonBlocListener({
    super.key,
    required this.tinyTale,
    required this.isTinyTaleContainsImage,
  });

  final TinyTale tinyTale;
  final bool isTinyTaleContainsImage;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: tinyTale.tinyTaleId != null
          ? context
              .read<TinyTalesCubit>()
              .isTinyTaleBookmarkedByMe(tinyTale.tinyTaleId!)
          : const Stream<bool>.empty(),
      builder: (context, snapshot) {
        bool isTinyTaleBookmarkedByMe = snapshot.data ?? false;

        return BlocListener<TinyTalesCubit, TinyTalesState>(
          listenWhen: (_, current) =>
              current is BookmarkTinyTaleSuccess ||
              current is UnBookmarkTinyTaleSuccess,
          listener: (context, state) {
            state.whenOrNull(
              bookmarkTinyTaleSuccess: () {
                context.read<TinyTalesCubit>().getBookmarkedTinyTales();
              },
              unBookmarkTinyTaleSuccess: () {
                context.read<TinyTalesCubit>().getBookmarkedTinyTales();
              },
            );
          },
          child: IconButton(
            onPressed: () {
              isTinyTaleBookmarkedByMe
                  ? context
                      .read<TinyTalesCubit>()
                      .unBookmarkTinyTale(tinyTale.tinyTaleId!)
                  : context.read<TinyTalesCubit>().bookmarkTinyTale(tinyTale);
            },
            icon: SvgPicture.asset(
              isTinyTaleBookmarkedByMe
                  ? AppAssets.svgsOrangeBookmarkIcon
                  : (isDarkModeActive(context)
                      ? AppAssets.svgsBookmarkIcon
                      : (isTinyTaleContainsImage
                          ? AppAssets.svgsBookmarkIcon
                          : AppAssets.svgsBlackBookmarkIcon)),
            ),
          ),
        );
      },
    );
  }
}
