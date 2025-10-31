// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/dashboard/presentation/bloc/dashboard_navigation_cubit.dart'
    as _i946;
import '../../features/splash/presentation/cubit/splash_cubit.dart' as _i125;
import '../managers/network_manager.dart' as _i291;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i291.NetworkManager>(() => _i291.NetworkManager());
    gh.singleton<_i946.DashboardNavigationCubit>(
        () => _i946.DashboardNavigationCubit());
    gh.lazySingleton<_i125.SplashCubit>(() => _i125.SplashCubit());
    return this;
  }
}
