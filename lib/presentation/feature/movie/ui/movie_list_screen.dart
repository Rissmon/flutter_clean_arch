import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_arch/di_initializer.dart';
import 'package:flutter_clean_arch/domain/model/movie_item.dart';
import 'package:flutter_clean_arch/presentation/feature/movie/bloc/movie_list_bloc.dart';
import 'package:flutter_clean_arch/presentation/feature/movie/ui/widget/movie_list_widget.dart';

import '../bloc/movie_list_state.dart';

class MovieListScreen extends StatelessWidget {
  const MovieListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider<MovieListBloc>(
          create: (context) {
            MovieListBloc movieListBloc = locate<MovieListBloc>();
            movieListBloc.getMovieList();
            return movieListBloc;
          }, // Add event to fetch data
          child: BlocBuilder<MovieListBloc, MovieListState>(
            builder: (context, state) {
              if (state is MovieListLoaded) {
                if (state.movies.isEmpty) {
                  return const Center(child: Text("No movies available"));
                }
                return MovieListWidget(state.movies);
              } else if (state is MovieListError) {
                return Center(child: Text("Error: ${state.message}"));
              }
              return const Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

