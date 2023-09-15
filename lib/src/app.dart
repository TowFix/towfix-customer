import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:towfix/core/application/localization/string_hardcoded.dart';

import '../core/application/app_router/app_router.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);

    return MaterialApp.router(
      title: 'TowFIx Service',
      restorationScopeId: 'app',
      routerConfig: goRouter,
      onGenerateTitle: (BuildContext context) => 'TowFIx'.hardcoded,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primaryColor: const Color.fromARGB(255, 54, 8, 134),
        scaffoldBackgroundColor: Color.fromARGB(255, 244, 241, 251),
        useMaterial3: true,
      ),
    );
  }
}
