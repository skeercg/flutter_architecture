// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/repository/users_repository.dart' as _i3;
import 'data/services_impl/users_service_impl.dart' as _i5;
import 'domain/services/users_service.dart' as _i4;
import 'presentation/cubits/users_cubit.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.UsersRepository>(_i3.UsersRepositoryImpl());
  gh.singleton<_i4.UsersService>(
      _i5.UsersServiceImpl(get<_i3.UsersRepository>()));
  gh.factory<_i6.ProfileCubit>(
      () => _i6.ProfileCubit(service: get<_i4.UsersService>()));
  return get;
}
