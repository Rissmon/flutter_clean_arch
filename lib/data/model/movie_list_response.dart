import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'movie_list_response.freezed.dart';
part 'movie_list_response.g.dart';

List<MovieListResponse> movieListResponseFromJson(String str) => List<MovieListResponse>.from(json.decode(str).map((x) => MovieListResponse.fromJson(x)));

String movieListResponseToJson(List<MovieListResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class MovieListResponse with _$MovieListResponse {
  const factory MovieListResponse({
    @JsonKey(name: "rank")
    @Default(0) int rank,
    @JsonKey(name: "title")
    @Default("") String title,
    @JsonKey(name: "description")
    @Default("") String description,
    @JsonKey(name: "image")
    String? image,
    @JsonKey(name: "big_image")
    String? bigImage,
    @JsonKey(name: "genre")
    List<String>? genre,
    @JsonKey(name: "thumbnail")
    String? thumbnail,
    @JsonKey(name: "rating")
    @Default("") String rating,
    @JsonKey(name: "id")
    @Default("") String id,
    @JsonKey(name: "year")
    int? year,
    @JsonKey(name: "imdbid")
    String? imdbid,
    @JsonKey(name: "imdb_link")
    String? imdbLink,
  }) = _MovieListResponse;

  factory MovieListResponse.fromJson(Map<String, dynamic> json) => _$MovieListResponseFromJson(json);
}
