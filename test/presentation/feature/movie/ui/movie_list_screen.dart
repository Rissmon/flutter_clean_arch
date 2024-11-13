import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/di_initializer.dart';
import 'package:flutter_clean_arch/presentation/feature/movie/bloc/movie_list_bloc.dart';
import 'package:flutter_clean_arch/presentation/feature/movie/bloc/movie_list_state.dart';
import 'package:flutter_clean_arch/presentation/feature/movie/ui/movie_list_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../common/movie_constants/movie_constants.dart';
import 'movie_list_screen.mocks.dart';


@GenerateMocks([MovieListBloc])
void main() {
  group('MovieList UI Tests', ()
  {
    late MockMovieListBloc mockMovieListBloc;

    setUp(() {
      configureDependencies();
      mockMovieListBloc = MockMovieListBloc();
    });

    testWidgets(
        'should show loading indicator and then movie list when fetched successfully', (
        tester) async {
      // Arrange
      final mockMovieListBloc = MockMovieListBloc();
      // Mocking the stream to return a successful loaded state
      when(mockMovieListBloc.stream).thenAnswer((_) =>
          Stream.value(MovieListLoaded(movieListData)));

      // Build the widget and trigger a rebuild
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: mockMovieListBloc,
            child: const MovieListScreen(),
          ),
        ),
      );

      // Assert the loading state is shown
      expect(find.byType(CircularProgressIndicator), findsOneWidget);

      // Simulate the UI to reflect the successful loading of movies
      await tester.pumpAndSettle(); // Wait for all animations to complete

      // Verify the loaded movie items are displayed
      expect(find.text('Inception'), findsOneWidget);
      expect(find.text('The Dark Knight'), findsOneWidget);
      expect(find.byType(ListView),
          findsOneWidget); // Assuming the movies are displayed in a ListView
    });
  });
}
