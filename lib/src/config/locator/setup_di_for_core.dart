part of '../../../dependency_injection.dart';

class SetupDIForCore {
  static void setup() {
    getIt.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(
        connectionChecker: getIt.get<InternetConnectionChecker>(),
      ),
    );

    getIt.registerLazySingleton<CacheHelper>(
      () => CacheHelper(getIt.get<SharedPreferences>()),
    );

    final Dio dio = DioFactory.getDio();
    getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  }
}
