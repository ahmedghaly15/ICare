part of '../../../dependency_injection.dart';

class SetupDIForExternal {
  SetupDIForExternal._();
  static Future<void> setup() async {
    getIt.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker(),
    );

    getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
    getIt.registerLazySingleton<FirebaseFirestore>(
      () => FirebaseFirestore.instance,
    );
    getIt.registerLazySingleton<FirebaseStorage>(
      () => firebase_storage.FirebaseStorage.instance,
    );
    getIt.registerLazySingleton<FirebaseMessaging>(
        () => FirebaseMessaging.instance);

    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

    getIt.registerLazySingleton<ImagePicker>(() => ImagePicker());

    getIt.registerLazySingleton<FlutterLocalNotificationsPlugin>(
      () => FlutterLocalNotificationsPlugin(),
    );
  }
}
