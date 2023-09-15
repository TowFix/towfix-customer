import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:towfix/core/application/localization/string_hardcoded.dart';
import 'package:towfix/core/constants/color/colors.dart';
import 'package:towfix/core/presentation/pages/onboarding/onboarding_page.dart';
import 'package:towfix/src/app.dart';
import 'package:towfix/src/map/presentation/pages/search_screen.dart';

import 'core/application/cache/cache_service.dart';
import 'core/providers/listeners/auth_state_listener/auth_state_listener_service.dart';
import 'core/providers/provider_logger.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // * Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // * Initialize the cache service
  await HiveCacheServiceImpl.init();
  //* turn of the # in the URLs on the web
  // GoRouter. .setUrlPathStrategy(UrlPathStrategy.path);
  // * Register error handlers. For more info, see:
  // * https://docs.flutter.dev/testing/errors
  registerErrorHandlers();
  // * Entry point of the app
  final container = ProviderContainer(
    observers: [Logger()],
  );
  container.read(authStateChangedServiceProvider);
  runApp(UncontrolledProviderScope(
    container: container,

    child: const MyApp(),

    // overrides: [],
  ));
}

void registerErrorHandlers() {
  // * Show some error UI if any uncaught exception happens
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    debugPrint(details.toString());
  };
  // * Handle errors from the underlying platform/OS
  PlatformDispatcher.instance.onError = (Object error, StackTrace stack) {
    debugPrint(error.toString());

    return true;
  };
  // * Show some error UI when any widget in the app fails to build
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('An error occurred'.hardcoded),
      ),
      body: Center(child: Text(details.toString())),
    );
  };
}
