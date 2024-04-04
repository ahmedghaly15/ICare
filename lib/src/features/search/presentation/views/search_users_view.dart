import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/widgets/send_message_text_field.dart';
import 'package:icare/src/features/search/presentation/cubit/search_cubit.dart';
import 'package:icare/src/features/search/presentation/widgets/search_users_bloc_builder.dart';

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
            const SearchUsersBlocBuilder(),
          ],
        ),
      ),
    );
  }
}
