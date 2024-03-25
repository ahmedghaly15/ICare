part of '../../../dependency_injection.dart';

class SetupDIForExternal {
  static Future<void> setup() async {
    getIt.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker(),
    );

    getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);

    getIt.registerLazySingleton<FirebaseFirestore>(
      () => FirebaseFirestore.instance,
    );

    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

    getIt.registerLazySingleton<FirebaseStorage>(
      () => firebase_storage.FirebaseStorage.instance,
    );

    getIt.registerLazySingleton<ImagePicker>(() => ImagePicker());
  }
}
