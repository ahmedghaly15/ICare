import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';

class LoadingProfilePhotosTab extends StatelessWidget {
  const LoadingProfilePhotosTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      padding: AppConstants.profileTabsPadding,
      itemCount: 9,
      itemBuilder: (_, index) => const ShimmerWidget(circularRadiusVal: 15),
    );
  }
}
