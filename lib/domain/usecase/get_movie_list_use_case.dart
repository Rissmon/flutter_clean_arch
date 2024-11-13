import 'package:flutter_clean_arch/domain/data_wrapper/api_result.dart';
import 'package:flutter_clean_arch/domain/model/movie_item.dart';
import 'package:flutter_clean_arch/domain/repo/movie_list_repository.dart';
import 'package:injectable/injectable.dart';

abstract class GetMovieListUseCase {
  Future<ApiResult<List<MovieItem>>> execute();
}

@Injectable(as: GetMovieListUseCase)
class GetMovieListUseCaseImpl extends GetMovieListUseCase {
  final MovieListRepository _repository;

  GetMovieListUseCaseImpl(this._repository);

  @override
  Future<ApiResult<List<MovieItem>>> execute() => _repository.getMovieList();
}
