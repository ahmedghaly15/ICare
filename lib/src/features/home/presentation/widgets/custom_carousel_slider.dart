import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/features/home/presentation/widgets/custom_carousel_slider_item.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: <Widget>[
        CustomCarouselSliderItem(
          icon: AppAssets.imagesSpeechTherapyFeature,
          onPressed: () {
            // context.pushRoute(route)
          },
        ),
        CustomCarouselSliderItem(
          icon: AppAssets.imagesIcareBotFeature,
          onPressed: () {
            context.pushRoute(const ICareBotRoute());
          },
        ),
        CustomCarouselSliderItem(
          icon: AppAssets.imagesCryTranslatorFeature,
          onPressed: () {
            context.pushRoute(const BabyCryPredictorRoute());
          },
        ),
      ],
      options: CarouselOptions(
        // height: 250.h,
        // aspectRatio: 190 / 250,
        viewportFraction: 0.45,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.4,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
