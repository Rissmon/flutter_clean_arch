import 'package:flutter_clean_arch/data/network/api_config.dart';
import 'package:flutter_clean_arch/data/network/api_service.dart';
import 'package:flutter_clean_arch/data/repo/movie_repository_impl.dart';
import 'package:flutter_clean_arch/domain/data_wrapper/api_result.dart';
import 'package:flutter_clean_arch/domain/model/movie_item.dart';
import 'package:flutter_clean_arch/domain/repo/movie_list_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../common/movie_constants/movie_constants.dart';
import 'movie_repo_test.mocks.dart';

@GenerateMocks([ApiService])
void main() {
  late MockApiService mockApiService;
  late MovieListRepository movieListRepository;

  setUp(() {
    mockApiService = MockApiService();
    movieListRepository = MovieListRepositoryImpl(mockApiService);
  });
  group('Movie list repo success, failure', () {
    test('repo should return list of movies', () async {
      // Arrange
      when(mockApiService.getData(movieUrl,header: movieApiHeader))
          .thenAnswer((_) async => movies);

      //Act
      var result = await movieListRepository.getMovieList();

      //Assert
      expect(result, isA<ApiSuccess<List<MovieItem>>>());
    });

    test('repo should return failure', () async {
      when(mockApiService
              .getData('https://jsonplaceholder.typicode.com/albums/1'))
          .thenThrow(Exception("Network error"));
      var result = await movieListRepository.getMovieList();
      expect(result, isA<ApiFailure>());
    });
  });
}
