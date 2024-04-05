import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/features/tips/presentation/cubit/tips_cubit.dart';
import 'package:icare/src/features/tips/presentation/widgets/show_random_tip_dialog.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/home/presentation/widgets/feature_icon_button.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              actions: <Widget>[
                IconButton(
                  onPressed: () {
                    context.read<TipsCubit>().getRandomTip();
                    ShowRandomTipDialog.show(context);
                  },
                  icon: Image.asset(AppAssets.imagesAppLogo),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: Container(
        width: SizeConfig.width * 0.7,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 14.w),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Row(
                  children: <Widget>[
                    CustomCachedNetworkImage(
                      imageUrl:
                          'https://img.freepik.com/free-photo/cheerful-girl-cashmere-sweater-laughs-against-backdrop-blossoming-sakura-portrait-woman-yellow-hoodie-city-spring_197531-17886.jpg?w=360',
                      imageBuilder: (_, image) {
                        return CircleAvatar(
                          radius: 25.r,
                          backgroundImage: image,
                        );
                      },
                    ),
                    MySizedBox.width10,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          Helper.currentUser!.name!,
                          style: AppTextStyles.textStyle16Bold(context),
                        ),
                        Text(
                          Helper.currentUser!.email!,
                          style: AppTextStyles.textStyle14Medium(context),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
