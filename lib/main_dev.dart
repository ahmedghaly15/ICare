import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:icare/bloc_observer.dart';
import 'package:icare/src/core/firebase/firebase_options.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/icare_app.dart';
import 'package:icare/dependency_injection.dart';

// TODO: look at image_picker doc and try to implement pickMultipleMedia() method

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await dotenv.load(fileName: AppStrings.dotEnvFileName);

  await DependencyInjection().setup();

  Bloc.observer = MyBlocObserver();

  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const ICareApp(),
    ),
  );
}
