import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/publish_text_button_bloc_consumer.dart';

class NewTinyTaleSliverAppBar extends StatelessWidget {
  const NewTinyTaleSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomSliverAppBar(
      title: AppStrings.newTinyTale,
      actions: <Widget>[
        PublishTextButtonBlocConsumer(),
      ],
    );
  }
}
