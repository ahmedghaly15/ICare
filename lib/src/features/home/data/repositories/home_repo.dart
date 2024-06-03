import 'package:flutter/material.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/firebase/firebase_error_handler.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/network/network_info.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/home/data/datasources/home_local_datasource.dart';
import 'package:icare/src/features/home/data/datasources/home_remote_datasource.dart';
import 'package:icare/src/features/home/data/models/developer.dart';

class HomeRepo {
  final HomeRemoteDatasource _homeRemoteDatasource;
  final HomeLocalDatasource _homeLocalDatasource;

  const HomeRepo(
    this._homeRemoteDatasource,
    this._homeLocalDatasource,
  );

  Future<FirebaseRequestResult<List<Developer>>> getDevelopers() async {
    if (_homeLocalDatasource.cachedDevelopersJson() == null) {
      if (await getIt.get<NetworkInfo>().isConnected) {
        debugPrint('************ GOT NO CACHED DEVELOPERS ************');
        try {
          final developers = await _homeRemoteDatasource.getDevelopers();
          await _homeLocalDatasource.cacheDevelopers(developers);
          return FirebaseRequestResult.success(developers);
        } catch (error) {
          return FirebaseRequestResult.error(
              FirebaseErrorHandler.handleError(error));
        }
      } else {
        return FirebaseRequestResult.error(
          FirebaseErrorHandler.handleError(AppStrings.noInternetConnection),
        );
      }
    } else {
      debugPrint('************ GOT CACHED DEVELOPERS ************');
      return FirebaseRequestResult.success(
        _homeLocalDatasource.retrieveCachedDevelopers(),
      );
    }
  }
}
