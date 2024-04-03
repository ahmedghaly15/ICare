import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';

class FirstThreeLikeTinyTale extends StatelessWidget {
  const FirstThreeLikeTinyTale({
    super.key,
    required this.tinyTaleId,
  });

  final String? tinyTaleId;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: context
          .read<TinyTalesCubit>()
          .streamFirstThreeLikeTinyTale(tinyTaleId!),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox.shrink();
        }

        List<DocumentSnapshot<Map<String, dynamic>>>? likes =
            snapshot.data?.docs;

        List<ICareUser> users =
            likes!.map((e) => ICareUser.fromJson(e.data()!['user'])).toList();

        return likes.length > 1
            ? FadeInRight(
                from: 30,
                child: InkWell(
                  onTap: () {
                    context.read<TinyTalesCubit>().getPeopleWhoLiked(tinyTaleId!).then((value) {
                      context.pushRoute(
                        PeopleWhoLikedRoute(tinyTaleId: tinyTaleId!));
                    });
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      likes.length,
                      (index) {
                        return CustomCachedNetworkImage(
                          imageUrl: users[index].profileImage!,
                          imageBuilder: (_, image) {
                            return Transform.translate(
                              offset: Offset((-10 * index).toDouble(), 0),
                              child: CircleAvatar(
                                radius: 12.r,
                                backgroundImage: image,
                              ),
                            );
                          },
                        );
                      },
                      growable: false,
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }
}
