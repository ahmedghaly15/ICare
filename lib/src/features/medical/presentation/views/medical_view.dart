import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/cached_image_error_icon.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/medical/data/models/get_medical_response.dart';
import 'package:icare/src/features/medical/presentation/cubit/medical_cubit.dart';
import 'package:icare/src/features/medical/presentation/cubit/medical_state.dart';

@RoutePage()
class MedicalView extends StatelessWidget {
  const MedicalView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicalCubit, MedicalState>(
      buildWhen: (_, state) =>
          state is GetMedicalSuccess ||
          state is GetMedicalLoading ||
          state is GetMedicalError,
      builder: (context, state) {
        if (state is GetMedicalLoading) {
          return const Center(child: CustomCircularProgressIndicator());
        } else if (state is GetMedicalSuccess) {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppConstants.horizontalPaddingVal.w,
              vertical: 40.h,
            ),
            child: ListView.separated(
              padding: EdgeInsets.zero,
              physics: AppConstants.scrollPhysics,
              itemCount: state.data.length,
              itemBuilder: (context, index) => MedicalItem(
                itemInfo: state.data[index],
                onPressed: () {},
              ),
              separatorBuilder: (BuildContext context, int index) =>
                  MySizedBox.height20,
            ),
          );
        } else {
          return const Center(child: Text('Error'));
        }
      },
    );
  }
}

class MedicalItem extends StatelessWidget {
  const MedicalItem({
    super.key,
    required this.itemInfo,
    required this.onPressed,
  });

  final GetMedicalResponse itemInfo;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 310 / 135,
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(25.r),
              child: CachedNetworkImage(
                imageUrl: itemInfo.medicalCategoryImage,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
                errorWidget: (context, url, error) =>
                    const CachedImageErrorIcon(),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(14.h),
              child: Text(
                itemInfo.medicalCategoryName,
                style: AppTextStyles.textStyle25Bold(context).copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
