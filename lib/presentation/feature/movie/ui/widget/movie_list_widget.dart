import 'package:flutter/cupertino.dart';
import 'package:flutter_clean_arch/domain/model/movie_item.dart';

import 'movie_list_item_widget.dart';

class MovieListWidget extends StatelessWidget {
  final List<MovieItem> movies;

  const MovieListWidget(this.movies, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: movies.length,
        padding: const EdgeInsets.all(10),
        itemBuilder: (BuildContext context, int index) {
          return MovieListItemWidget(movies[index]);
        }, separatorBuilder: (BuildContext context, int index) { return const SizedBox(height: 10,); },);
  }
}
