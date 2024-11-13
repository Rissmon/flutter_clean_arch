import 'package:equatable/equatable.dart';
import 'package:flutter_clean_arch/domain/model/movie_item.dart';

abstract class MovieListState extends Equatable {
  const MovieListState();

  @override
  List<Object?> get props => [];
}

class MovieListInitial extends MovieListState {
  @override
  List<Object?> get props => []; // Empty list means no properties for comparison
}
class MovieListLoading extends MovieListState {
  @override
  List<Object?> get props => []; // Empty list means no properties for comparison
}

class MovieListLoaded extends MovieListState {
  final List<MovieItem> movies;

  const MovieListLoaded(this.movies);

  @override
  List<Object?> get props => [movies]; // Include movies to compare their values
}

class MovieListError extends MovieListState {
  final String message;

  const MovieListError(this.message);

  @override
  List<Object?> get props => [message]; // Include message for comparison
}
