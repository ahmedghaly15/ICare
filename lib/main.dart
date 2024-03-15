import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/bloc_observer.dart';
import 'package:icare/src/core/firebase/firebase_options.dart';
import 'package:icare/src/icare_app.dart';
import 'package:icare/dependency_injection.dart';

// TODO: Build error widget and no internet widget

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DependencyInjection().setup();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Bloc.observer = MyBlocObserver();

  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const ICareApp(),
    ),
  );
}
