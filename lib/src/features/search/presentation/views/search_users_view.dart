import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/core/widgets/send_message_text_field.dart';
import 'package:icare/src/features/search/presentation/cubit/search_cubit.dart';
import 'package:icare/src/features/search/presentation/cubit/search_state.dart';
import 'package:icare/src/features/search/presentation/widgets/shimmer_search_users.dart';

@RoutePage()
class SearchUsersView extends StatelessWidget implements AutoRouteWrapper {
  const SearchUsersView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<SearchCubit>(
      create: (_) => getIt.get<SearchCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              sliver: SliverToBoxAdapter(
                child: SendMessageTextField(
                  controller: context.read<SearchCubit>().searchController,
                  hintText: 'Name or Email',
                  onChanged: (String val) {
                    context.read<SearchCubit>().setNewTextValue(val);
                    context.read<SearchCubit>().searchUsers();
                  },
                ),
              ),
            ),
            BlocBuilder<SearchCubit, SearchState>(
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
                        (context, index) => IntrinsicWidth(
                          child: ListTile(
                            onTap: () {},
                            contentPadding: EdgeInsets.zero,
                            leading: CustomCachedNetworkImage(
                              imageUrl: state.searchResult[index].profileImage!,
                              imageBuilder: (_, image) {
                                return CircleAvatar(
                                  radius: 24.r,
                                  backgroundImage: image,
                                );
                              },
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  state.searchResult[index].name!,
                                  style: AppTextStyles.textStyle18Bold(context),
                                ),
                                Text(
                                  state.searchResult[index].email!,
                                  style:
                                      AppTextStyles.textStyle14Medium(context)
                                          .copyWith(color: Colors.grey),
                                ),
                              ],
                            ),
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
                  return const ShimmerSearchUsers();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
