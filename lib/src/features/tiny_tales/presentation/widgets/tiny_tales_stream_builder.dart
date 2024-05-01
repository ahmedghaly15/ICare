import 'package:animate_do/animate_do.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/empty_tiny_tales.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/tiny_tale_item.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/tiny_tales_loading_sliver_list.dart';

class TinyTalesStreamBuilder extends StatelessWidget {
  const TinyTalesStreamBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: context.read<TinyTalesCubit>().streamTinyTales(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting &&
            snapshot.data == null) {
          return const TinyTalesLoadingSliverList();
        }
        final tinyTales = snapshot.data!.docs
            .map((e) => TinyTale.fromJson(e.data()))
            .toList();
        return tinyTales.isNotEmpty
            ? SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => ElasticIn(
                    child: TinyTaleItem(tinyTale: tinyTales[index]),
                  ),
                  childCount: tinyTales.length,
                ),
              )
            : const SliverFillRemaining(child: EmptyTinyTales());
      },
    );
  }
}
