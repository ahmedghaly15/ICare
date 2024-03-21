import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/disease_details/data/models/disease_details.dart';
import 'package:icare/src/features/disease_details/presentation/widgets/custom_disease_details_tab.dart';
import 'package:icare/src/features/disease_details/presentation/widgets/custom_do_or_not_tab.dart';
import 'package:icare/src/features/disease_details/presentation/widgets/disease_info_section_item.dart';

class CustomDiseaseDetailsTabs extends StatefulWidget {
  const CustomDiseaseDetailsTabs({super.key, required this.diseaseDetails});

  final DiseaseDetails diseaseDetails;

  @override
  State<CustomDiseaseDetailsTabs> createState() =>
      _CustomDiseaseDetailsTabsState();
}

class _CustomDiseaseDetailsTabsState extends State<CustomDiseaseDetailsTabs> {
  int _currentIndex = 0;

  final List<String> _tabsTitles = <String>[
    'Symptoms',
    'Red Flags',
    'Initial Management',
    'Do or Not',
  ];

  @override
  Widget build(BuildContext context) {
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
              title: _tabsTitles[index],
              isActive: index == _currentIndex,
              onPressed: () {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            separatorBuilder: (_, __) => MySizedBox.width6,
            itemCount: _tabsTitles.length,
          ),
        ),
        if (_currentIndex == 0)
          CustomDiseaseDetailsTab(
            listOfStringData: widget.diseaseDetails.symptoms,
          ),
        if (_currentIndex == 1)
          CustomDiseaseDetailsTab(
            listOfStringData: widget.diseaseDetails.redFlags,
          ),
        if (_currentIndex == 2)
          CustomDiseaseDetailsTab(
            listOfStringData: widget.diseaseDetails.initialManagement,
          ),
        if (_currentIndex == 3)
          CustomDoOrNotTab(
            doList: widget.diseaseDetails.doOrNot.dO,
            notToDoList: widget.diseaseDetails.doOrNot.doNot,
          ),
      ],
    );
  }
}
