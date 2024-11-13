import 'package:flutter_clean_arch/data/model/movie_list_response.dart';
import 'package:flutter_clean_arch/domain/model/movie_item.dart';
import 'package:flutter_clean_arch/data/common/utility.dart';

extension MovieMapper on MovieListResponse {
  MovieItem toUiModel() {
    return MovieItem(
      rank: rank,
      title: title,
      description: description,
      thumbnail: thumbnail,
      rating: parseToDouble(rating),
      year: year,
    );
  }
}