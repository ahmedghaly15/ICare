import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/user/domain/usecases/get_user_data.dart';
import 'package:icare/src/features/user/presentation/cubit/user_state.dart';

class UserCubit extends Cubit<UserState> {
  final GetUserDataUseCase _getUserDataUseCase;

  UserCubit(
    this._getUserDataUseCase,
  ) : super(const UserState.initial());

  ICareUser? currentUser;
  

  Future<void> _getUserData() async {
    emit(const UserState.getUserDataLoading());

    _getUserDataUseCase(const NoParams()).listen((event) async {
      await _cacheUser(event.data()!);
      currentUser = ICareUser.fromJson(event.data()!);
      emit(UserState.getUserData(ICareUser.fromJson(event.data()!)));
    }).onError((error) {
      emit(UserState.getUserDataError(error.toString()));
    });
  }

  Future<bool> _cacheUser(Map<String, dynamic> event) {
    return getIt
        .get<CacheHelper>()
        .saveData(key: AppStrings.cachedUser, value: json.encode(event));
  }

  Future<void> getCurrentUser() async {
    final String? userJson =
        getIt.get<CacheHelper>().getStringData(key: AppStrings.cachedUser);

    if (userJson != null) {
      debugPrint('*******&&&&&& GOT CACHED USER *********');
      currentUser = ICareUser.fromJson(json.decode(userJson));
      emit(UserState.getUserData(currentUser!));
    } else {
      debugPrint('*******&&&&&& GOT NOT CACHED USER *********');
      await _getUserData();
    }
  }
}
