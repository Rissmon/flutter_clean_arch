import 'package:flutter_clean_arch/domain/model/movie_item.dart';

import '../data_wrapper/api_result.dart';

abstract class MovieListRepository {
  Future<ApiResult<List<MovieItem>>> getMovieList();
}
