import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/utils/functions/open_url.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/like_comment_bookmark_buttons.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/tiny_tale_image.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/tiny_tale_item_container.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/tiny_tale_item_upper_section.dart';

class TinyTaleItem extends StatelessWidget {
  const TinyTaleItem({super.key, required this.tinyTale});

  final TinyTale tinyTale;

  @override
  Widget build(BuildContext context) {
    return TinyTaleItemContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TinyTaleItemUpperSection(tinyTale: tinyTale),
          if (tinyTale.tinyTaleData!.text != null &&
              tinyTale.tinyTaleData!.text!.isNotEmpty) ...[
            MySizedBox.height10,
            Linkify(
              text: tinyTale.tinyTaleData!.text!.trim(),
              style: AppTextStyles.textStyle14Regular.copyWith(
                color: context.isDarkModeActive ? Colors.white : Colors.black,
              ),
              onOpen: (link) => openUrl(link),
            )
          ],
          MySizedBox.height10,
          if (tinyTale.tinyTaleData!.tinyTaleImage != null)
            TinyTaleItemImage(
              tinyTaleImageUrl: tinyTale.tinyTaleData!.tinyTaleImage!,
              tinyTale: tinyTale,
            ),
          if (tinyTale.tinyTaleData!.tinyTaleImage == null)
            LikeCommentBookmarkButtons(tinyTale: tinyTale),
        ],
      ),
    );
  }
}
