import 'package:animate_do/animate_do.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/features/profile/presentation/widgets/loading_profile_tiny_tales_tab.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/empty_tiny_tales.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/tiny_tale_item.dart';

class ProfileTinyTalesTab extends StatelessWidget {
  const ProfileTinyTalesTab({super.key, required this.uId});

  final String uId;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: context.read<TinyTalesCubit>().streamTinyTales(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingProfileTinyTalesTab();
        } else {
          final queryTinyTales = snapshot.data?.docs;

          List<TinyTale> tinyTales = [];
          if (queryTinyTales != null) {
            for (final doc in queryTinyTales) {
              if (doc.data()['user']['uId'] == uId) {
                tinyTales.add(TinyTale.fromJson(doc.data()));
              }
            }
          }
          return tinyTales.isNotEmpty
              ? ListView.builder(
                  padding: AppConstants.profileTabsPadding,
                  itemBuilder: (_, index) => FadeIn(
                    duration: const Duration(milliseconds: 800),
                    child: TinyTaleItem(
                      tinyTale: tinyTales[index],
                    ),
                  ),
                  itemCount: tinyTales.length,
                )
              : const EmptyTinyTales();
        }
      },
    );
  }
}
