import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/widgets/disease_item.dart';
import 'package:icare/src/features/medical/data/models/get_medical_info_response.dart';

class MedicalInfoCategoriesCarouselSlider extends StatelessWidget {
  const MedicalInfoCategoriesCarouselSlider({
    super.key,
    required this.categories,
  });

  final List<GetMedicalInfoResponse> categories;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemBuilder: (_, index, __) => DiseaseItem(
        diseaseType: categories[index].diseaseType,
        diseaseTypeImage: categories[index].diseaseTypeImage,
        onPressed: () => context.pushRoute(
          MedicalInfoCategoryDiseasesRoute(
            diseaseType: categories[index].diseaseType,
            diseases: categories[index].diseases,
          ),
        ),
      ),
      itemCount: categories.length,
      options: CarouselOptions(
        aspectRatio: 0.65,
        viewportFraction: 0.7,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
