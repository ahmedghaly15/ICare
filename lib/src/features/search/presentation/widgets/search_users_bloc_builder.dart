import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/features/search/presentation/cubit/search_cubit.dart';
import 'package:icare/src/features/search/presentation/cubit/search_state.dart';
import 'package:icare/src/core/widgets/user_item.dart';
import 'package:icare/src/core/widgets/loading_users_sliver_list.dart';

class SearchUsersBlocBuilder extends StatelessWidget {
  const SearchUsersBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      buildWhen: (_, current) =>
          current is SearchInitial ||
          current is SearchUsersLoading ||
          current is SearchUsersSuccess ||
          current is SearchUsersError,
      builder: (context, state) {
        if (state is SearchInitial) {
          return const SliverFillRemaining(
            child: SizedBox.expand(),
          );
        } else if (state is SearchUsersSuccess) {
          return SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                  margin: EdgeInsets.only(bottom: 16.h),
                  child: UserItem(
                    user: state.searchResult[index],
                    onTap: () {
                      // TODO: navigate to user profile
                    },
                  ),
                ),
                childCount: state.searchResult.length,
              ),
            ),
          );
        } else if (state is SearchUsersError) {
          return SliverFillRemaining(
            child: CustomErrorWidget(
              error: state.error,
              tryAgainOnPressed: () =>
                  context.read<SearchCubit>().emitInitial(),
            ),
          );
        } else {
          return const LoadingUsersSliverList();
        }
      },
    );
  }
}
