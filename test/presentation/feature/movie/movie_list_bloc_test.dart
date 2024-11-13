import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_clean_arch/domain/data_wrapper/api_result.dart';
import 'package:flutter_clean_arch/domain/usecase/get_movie_list_use_case.dart';
import 'package:flutter_clean_arch/presentation/feature/movie/bloc/movie_list_bloc.dart';
import 'package:flutter_clean_arch/presentation/feature/movie/bloc/movie_list_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../common/movie_constants/movie_constants.dart';
import 'movie_list_bloc_test.mocks.dart';

@GenerateMocks([GetMovieListUseCase])
void main() {
  late MovieListBloc movieListBloc;
  late MockGetMovieListUseCase movieListUseCase;
  setUp(() {
    movieListUseCase = MockGetMovieListUseCase();
    movieListBloc = MovieListBloc(getMovieListUseCase: movieListUseCase);
  });
  // Act
  final expected = [
    MovieListLoading(),
    MovieListLoaded(movieListData),
  ];
  group('MovieListBloc', () {
    blocTest(
      'should emit [MovieListLoading, MovieListLoaded] when movie list is fetched successfully',
      build: () {
        when(movieListUseCase.execute())
            .thenAnswer((_) async => ApiSuccess(movieListData));
        return movieListBloc;
      },
      act: (bloc) => movieListBloc.getMovieList(),
      expect: () => expected,
    );

    blocTest(
      'should emit [MovieListLoading, MovieListError] when movie list is fetched successfully',
      build: () {
        when(movieListUseCase.execute())
            .thenAnswer((_) async => const ApiFailure("Api failed"));
        return movieListBloc;
      },
      act: (bloc) => movieListBloc.getMovieList(),
      expect: () => [
        MovieListLoading(),
        const MovieListError("Api failed"),
      ],
    );
  });
}
