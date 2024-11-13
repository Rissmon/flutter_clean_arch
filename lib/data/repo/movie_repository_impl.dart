import 'package:flutter_clean_arch/data/common/safe_api_call.dart';
import 'package:flutter_clean_arch/data/mapper/movie_list_mapper.dart';
import 'package:flutter_clean_arch/data/model/movie_list_response.dart';
import 'package:flutter_clean_arch/data/network/api_config.dart';
import 'package:flutter_clean_arch/domain/data_wrapper/api_result.dart';
import 'package:flutter_clean_arch/domain/model/movie_item.dart';
import 'package:flutter_clean_arch/domain/repo/movie_list_repository.dart';
import 'package:injectable/injectable.dart';

import '../network/api_service.dart';

@Injectable(as: MovieListRepository)
class MovieListRepositoryImpl implements MovieListRepository {
  final ApiService apiService;

  MovieListRepositoryImpl(this.apiService);

  @override
  Future<ApiResult<List<MovieItem>>> getMovieList() async {
    return safeApiCall(
      api: () => apiService.getData(movieUrl, header: movieApiHeader),
      fromJson: (data) => MovieListResponse.fromJson(data),
      toUiModel: (model) => model.toUiModel(),
    );
  }
}
