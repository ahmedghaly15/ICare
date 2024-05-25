import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_utils.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/disease_details/data/models/disease_details.dart';
import 'package:icare/src/features/disease_details/presentation/cubits/current_tap/current_tap_cubit.dart';
import 'package:icare/src/features/disease_details/presentation/cubits/current_tap/current_tap_state.dart';
import 'package:icare/src/features/disease_details/presentation/widgets/custom_disease_details_tab.dart';
import 'package:icare/src/features/disease_details/presentation/widgets/custom_do_or_not_tab.dart';
import 'package:icare/src/features/disease_details/presentation/widgets/disease_info_section_item.dart';

class CustomDiseaseDetailsTabsBlocBuilder extends StatelessWidget {
  const CustomDiseaseDetailsTabsBlocBuilder({
    super.key,
    required this.diseaseDetails,
  });

  final DiseaseDetails diseaseDetails;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentTapCubit, CurrentTapState>(
      buildWhen: (previous, current) => current is UpdateCurrentTab,
      builder: (context, state) {
        int currentTap = context.read<CurrentTapCubit>().currentTap;

        return Column(
          children: <Widget>[
            SizedBox(
              height: SizeConfig.height * 0.06,
              child: ListView.separated(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                physics: AppConstants.scrollPhysics,
                itemBuilder: (_, index) => DiseaseInfoSectionItem(
                  index: index,
                  title: AppUtils.diseaseDetailsTabsTitles[index],
                  isActive: index == currentTap,
                  onPressed: () {
                    context.read<CurrentTapCubit>().updateCurrentTap(index);
                  },
                ),
                separatorBuilder: (_, __) => MySizedBox.width6,
                itemCount: AppUtils.diseaseDetailsTabsTitles.length,
              ),
            ),
            if (currentTap == 0)
              CustomDiseaseDetailsTab(
                listOfStringData: diseaseDetails.symptoms,
              ),
            if (currentTap == 1)
              CustomDiseaseDetailsTab(
                listOfStringData: diseaseDetails.redFlags,
              ),
            if (currentTap == 2)
              CustomDiseaseDetailsTab(
                listOfStringData: diseaseDetails.initialManagement,
              ),
            if (currentTap == 3)
              CustomDoOrNotTab(
                doList: diseaseDetails.doOrNot.dO,
                notToDoList: diseaseDetails.doOrNot.doNot,
              ),
          ],
        );
      },
    );
  }
}
