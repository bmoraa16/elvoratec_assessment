import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:prueba_elvoratec/core/constants/route_constants.dart';
import 'package:prueba_elvoratec/core/di/injection.dart';
import 'package:prueba_elvoratec/features/dashboard/presentation/bloc/dashboard_navigation_cubit.dart';
import 'package:prueba_elvoratec/features/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:prueba_elvoratec/features/splash/presentation/cubit/splash_cubit.dart';
import 'package:prueba_elvoratec/features/splash/presentation/pages/splash_screen.dart';

class TestRouter {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: RouteConstants.initialRoute,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider.value(
            value: getIt<SplashCubit>()..fetchConfigurationInfo(),
            child: const SplashScreen(),
          );
        },
      ),
      GoRoute(
        path: RouteConstants.dashboardRoute,
        builder: (BuildContext context, GoRouterState state) {
          return MultiBlocProvider(
            providers: [
              BlocProvider.value(value: getIt<DashboardNavigationCubit>()),
            ],
            child: const DashboardScreen(),
          );
        },
      ),
    ],
  );
}