import 'package:flutter_clean_arch/domain/data_wrapper/api_result.dart';
import 'package:flutter_clean_arch/domain/model/movie_item.dart';
import 'package:flutter_clean_arch/domain/repo/movie_list_repository.dart';
import 'package:flutter_clean_arch/domain/usecase/get_movie_list_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../common/movie_constants/movie_constants.dart';
import 'get_movie_list_use_case_test.mocks.dart';

@GenerateMocks([MovieListRepository])
void main() {
  late GetMovieListUseCase useCase;
  late MockMovieListRepository mockRepository;

  setUp(() {
    mockRepository = MockMovieListRepository();
    useCase = GetMovieListUseCaseImpl(mockRepository);
  });
  test('should return list of movies when repository call is successful',
      () async {
    // Arrange
    when(mockRepository.getMovieList())
        .thenAnswer((_) async => ApiSuccess(movieListData));

    // Act
    final result = await useCase.execute();

    // Assert
    expect(result, isA<ApiSuccess<List<MovieItem>>>());
    expect((result as ApiSuccess).data, movieListData);
  });

  test('should return failure when repository call fails', () async {
    // Arrange
    const errorMessage = "Failed to fetch data";
    when(mockRepository.getMovieList())
        .thenAnswer((_) async => const ApiFailure(errorMessage));

    // Act
    final result = await useCase.execute();

    // Assert
    expect(result, isA<ApiFailure>());
    expect((result as ApiFailure).error, errorMessage);
  });
}
