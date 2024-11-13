import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_arch/domain/data_wrapper/api_result.dart';
import 'package:flutter_clean_arch/domain/usecase/get_movie_list_use_case.dart';
import 'package:injectable/injectable.dart';

import 'movie_list_state.dart';

@Injectable()
class MovieListBloc extends Cubit<MovieListState> {
  final GetMovieListUseCase getMovieListUseCase;

  MovieListBloc( {required this.getMovieListUseCase}): super(MovieListInitial());

  Future<void> getMovieList() async {
    emit(MovieListLoading());
    var response = await getMovieListUseCase.execute();
    if (response is ApiSuccess) {
      emit(MovieListLoaded((response as ApiSuccess).data));
    } else {
      emit(MovieListError((response as ApiFailure).error));
    }
  }
}
