import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:towfix/core/data/dtos/vehicle/vehicle.dart';
import 'package:towfix/core/presentation/pages/loading/splash_loading_page.dart';
import 'package:towfix/src/authentication/login/presentation/login_page.dart';
import 'package:towfix/src/home/presentation/pages/home.dart';
import 'package:towfix/src/tow_truck_service/pages/add_vehicle_page.dart';
import 'package:towfix/src/tow_truck_service/pages/select_vehicle_page.dart';
import 'package:towfix/src/towfix_services/presentation/pages/towfix_services_map_screen.dart';

import '../../../src/dashboard/presentation/pages/dashbaord.dart';
import '../../../src/map/presentation/pages/search_screen.dart';
import '../../../src/tow_truck_service/pages/tow_truck_request_page.dart';
import '../../data/dtos/not_found/not_found_screen.dart';
import '../../providers/common.dart';

part 'app_router.g.dart';

enum AppRoute {
  home,
  auth,
  splash,
  addVehicle,
  selectVehicle,
  requestTowTruck,
  chooseLocation,
  mapServices,

  signInWithEmail,
  getStarted,
  signUp,
  productCategory,
  productDetails,
  checkout,
  orderStatus,
  shop,
  shopOnboarding,
  shopSetup,
  shopCategories,
  categoryView,
  productView,
  createProduct,
  createProductByType,
  editProduct,
}

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  // final hasLoggedInUserAsyncValue = ref.watch(loginStatusProvider);
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
          path: '/',
          name: AppRoute.splash.name,
          builder: (context, state) => const SplashLoadingPage(),
          redirect: (context, state) {
            final loginState = ref.watch(loginStateProvider);
            log('loginState: ${loginState}', name: 'REDIRECTLOGINSTATE');

            final authRepo = ref.read(authRepositoryProvider);
            // //* check if user is logged in
            if (state.location.startsWith('/auth') && loginState) {
              // * check if vendor's shop has been onboarded
              // if (!ref.read(hasOnboardedShopProvider)) {
              //   return '/home/shop/onboarding';
              // }
              log('inside redirect');

              return '/home';
            }
          },
          routes: [
            GoRoute(
                path: 'auth',
                name: AppRoute.auth.name,
                pageBuilder: (context, state) => MaterialPage(
                      key: state.pageKey,
                      fullscreenDialog: true,
                      child: const LoginPage(),
                    ),
                routes: []),
            GoRoute(
                path: 'home',
                name: AppRoute.home.name,
                pageBuilder: (context, state) => MaterialPage(
                      key: state.pageKey,
                      fullscreenDialog: true,
                      child: Dashboard(),
                    ),
                routes: [
                  GoRoute(
                    path: 'vehicles',
                    name: AppRoute.selectVehicle.name,
                    pageBuilder: (context, state) => MaterialPage(
                      key: state.pageKey,
                      fullscreenDialog: true,
                      child: const SelectVehiclePage(),
                    ),
                    routes: [
                      // TowTruckRequestPage
                      GoRoute(
                        path: 'request-tow-truck',
                        name: AppRoute.requestTowTruck.name,
                        pageBuilder: (context, state) {
                          final extra = state.extra as Map<String, dynamic>;
                          final vehicle = extra['vehicle'] as Vehicle;
                          return MaterialPage(
                            key: state.pageKey,
                            fullscreenDialog: true,
                            child: TowTruckRequestPage(vehicle: vehicle),
                          );
                        },
                        routes: [],
                      ),
                    ],
                  ),
                  GoRoute(
                      path: 'add-vehicle',
                      name: AppRoute.addVehicle.name,
                      pageBuilder: (context, state) => MaterialPage(
                            key: state.pageKey,
                            fullscreenDialog: true,
                            child: const AddVehiclePage(),
                          ),
                      routes: []),
                  GoRoute(
                      path: 'choose-location',
                      name: AppRoute.chooseLocation.name,
                      pageBuilder: (context, state) => MaterialPage(
                            key: state.pageKey,
                            fullscreenDialog: true,
                            child: const SearchScreen(),
                          ),
                      routes: []),
                  GoRoute(
                      path: 'map',
                      name: AppRoute.mapServices.name,
                      pageBuilder: (context, state) => MaterialPage(
                            key: state.pageKey,
                            fullscreenDialog: true,
                            child: const TowfixServicesMapPage(),
                          ),
                      routes: []),
                ]),
          ]),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
}
