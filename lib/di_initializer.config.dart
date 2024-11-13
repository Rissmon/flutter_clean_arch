// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'data/di/network_client.dart' as _i965;
import 'data/network/api_service.dart' as _i976;
import 'data/repo/movie_repository_impl.dart' as _i525;
import 'domain/repo/movie_list_repository.dart' as _i490;
import 'domain/usecase/get_movie_list_use_case.dart' as _i942;
import 'presentation/feature/movie/bloc/movie_list_bloc.dart' as _i427;

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
    gh.factory<_i965.NetworkClient>(() => _i965.NetworkClient());
    gh.factory<_i976.ApiService>(
        () => _i976.ApiServiceImpl(gh<_i965.NetworkClient>()));
    gh.factory<_i490.MovieListRepository>(
        () => _i525.MovieListRepositoryImpl(gh<_i976.ApiService>()));
    gh.factory<_i942.GetMovieListUseCase>(
        () => _i942.GetMovieListUseCaseImpl(gh<_i490.MovieListRepository>()));
    gh.factory<_i427.MovieListBloc>(() => _i427.MovieListBloc(
        getMovieListUseCase: gh<_i942.GetMovieListUseCase>()));
    return this;
  }
}
