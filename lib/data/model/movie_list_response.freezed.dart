// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieListResponse _$MovieListResponseFromJson(Map<String, dynamic> json) {
  return _MovieListResponse.fromJson(json);
}

/// @nodoc
mixin _$MovieListResponse {
  @JsonKey(name: "rank")
  int get rank => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "big_image")
  String? get bigImage => throw _privateConstructorUsedError;
  @JsonKey(name: "genre")
  List<String>? get genre => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail")
  String? get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  String get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "year")
  int? get year => throw _privateConstructorUsedError;
  @JsonKey(name: "imdbid")
  String? get imdbid => throw _privateConstructorUsedError;
  @JsonKey(name: "imdb_link")
  String? get imdbLink => throw _privateConstructorUsedError;

  /// Serializes this MovieListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieListResponseCopyWith<MovieListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListResponseCopyWith<$Res> {
  factory $MovieListResponseCopyWith(
          MovieListResponse value, $Res Function(MovieListResponse) then) =
      _$MovieListResponseCopyWithImpl<$Res, MovieListResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "rank") int rank,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "big_image") String? bigImage,
      @JsonKey(name: "genre") List<String>? genre,
      @JsonKey(name: "thumbnail") String? thumbnail,
      @JsonKey(name: "rating") String rating,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "year") int? year,
      @JsonKey(name: "imdbid") String? imdbid,
      @JsonKey(name: "imdb_link") String? imdbLink});
}

/// @nodoc
class _$MovieListResponseCopyWithImpl<$Res, $Val extends MovieListResponse>
    implements $MovieListResponseCopyWith<$Res> {
  _$MovieListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = null,
    Object? title = null,
    Object? description = null,
    Object? image = freezed,
    Object? bigImage = freezed,
    Object? genre = freezed,
    Object? thumbnail = freezed,
    Object? rating = null,
    Object? id = null,
    Object? year = freezed,
    Object? imdbid = freezed,
    Object? imdbLink = freezed,
  }) {
    return _then(_value.copyWith(
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      bigImage: freezed == bigImage
          ? _value.bigImage
          : bigImage // ignore: cast_nullable_to_non_nullable
              as String?,
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      imdbid: freezed == imdbid
          ? _value.imdbid
          : imdbid // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbLink: freezed == imdbLink
          ? _value.imdbLink
          : imdbLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieListResponseImplCopyWith<$Res>
    implements $MovieListResponseCopyWith<$Res> {
  factory _$$MovieListResponseImplCopyWith(_$MovieListResponseImpl value,
          $Res Function(_$MovieListResponseImpl) then) =
      __$$MovieListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rank") int rank,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "big_image") String? bigImage,
      @JsonKey(name: "genre") List<String>? genre,
      @JsonKey(name: "thumbnail") String? thumbnail,
      @JsonKey(name: "rating") String rating,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "year") int? year,
      @JsonKey(name: "imdbid") String? imdbid,
      @JsonKey(name: "imdb_link") String? imdbLink});
}

/// @nodoc
class __$$MovieListResponseImplCopyWithImpl<$Res>
    extends _$MovieListResponseCopyWithImpl<$Res, _$MovieListResponseImpl>
    implements _$$MovieListResponseImplCopyWith<$Res> {
  __$$MovieListResponseImplCopyWithImpl(_$MovieListResponseImpl _value,
      $Res Function(_$MovieListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = null,
    Object? title = null,
    Object? description = null,
    Object? image = freezed,
    Object? bigImage = freezed,
    Object? genre = freezed,
    Object? thumbnail = freezed,
    Object? rating = null,
    Object? id = null,
    Object? year = freezed,
    Object? imdbid = freezed,
    Object? imdbLink = freezed,
  }) {
    return _then(_$MovieListResponseImpl(
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      bigImage: freezed == bigImage
          ? _value.bigImage
          : bigImage // ignore: cast_nullable_to_non_nullable
              as String?,
      genre: freezed == genre
          ? _value._genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      imdbid: freezed == imdbid
          ? _value.imdbid
          : imdbid // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbLink: freezed == imdbLink
          ? _value.imdbLink
          : imdbLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieListResponseImpl implements _MovieListResponse {
  const _$MovieListResponseImpl(
      {@JsonKey(name: "rank") this.rank = 0,
      @JsonKey(name: "title") this.title = "",
      @JsonKey(name: "description") this.description = "",
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "big_image") this.bigImage,
      @JsonKey(name: "genre") final List<String>? genre,
      @JsonKey(name: "thumbnail") this.thumbnail,
      @JsonKey(name: "rating") this.rating = "",
      @JsonKey(name: "id") this.id = "",
      @JsonKey(name: "year") this.year,
      @JsonKey(name: "imdbid") this.imdbid,
      @JsonKey(name: "imdb_link") this.imdbLink})
      : _genre = genre;

  factory _$MovieListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieListResponseImplFromJson(json);

  @override
  @JsonKey(name: "rank")
  final int rank;
  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "big_image")
  final String? bigImage;
  final List<String>? _genre;
  @override
  @JsonKey(name: "genre")
  List<String>? get genre {
    final value = _genre;
    if (value == null) return null;
    if (_genre is EqualUnmodifiableListView) return _genre;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "thumbnail")
  final String? thumbnail;
  @override
  @JsonKey(name: "rating")
  final String rating;
  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "year")
  final int? year;
  @override
  @JsonKey(name: "imdbid")
  final String? imdbid;
  @override
  @JsonKey(name: "imdb_link")
  final String? imdbLink;

  @override
  String toString() {
    return 'MovieListResponse(rank: $rank, title: $title, description: $description, image: $image, bigImage: $bigImage, genre: $genre, thumbnail: $thumbnail, rating: $rating, id: $id, year: $year, imdbid: $imdbid, imdbLink: $imdbLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieListResponseImpl &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.bigImage, bigImage) ||
                other.bigImage == bigImage) &&
            const DeepCollectionEquality().equals(other._genre, _genre) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.imdbid, imdbid) || other.imdbid == imdbid) &&
            (identical(other.imdbLink, imdbLink) ||
                other.imdbLink == imdbLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      rank,
      title,
      description,
      image,
      bigImage,
      const DeepCollectionEquality().hash(_genre),
      thumbnail,
      rating,
      id,
      year,
      imdbid,
      imdbLink);

  /// Create a copy of MovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieListResponseImplCopyWith<_$MovieListResponseImpl> get copyWith =>
      __$$MovieListResponseImplCopyWithImpl<_$MovieListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieListResponseImplToJson(
      this,
    );
  }
}

abstract class _MovieListResponse implements MovieListResponse {
  const factory _MovieListResponse(
          {@JsonKey(name: "rank") final int rank,
          @JsonKey(name: "title") final String title,
          @JsonKey(name: "description") final String description,
          @JsonKey(name: "image") final String? image,
          @JsonKey(name: "big_image") final String? bigImage,
          @JsonKey(name: "genre") final List<String>? genre,
          @JsonKey(name: "thumbnail") final String? thumbnail,
          @JsonKey(name: "rating") final String rating,
          @JsonKey(name: "id") final String id,
          @JsonKey(name: "year") final int? year,
          @JsonKey(name: "imdbid") final String? imdbid,
          @JsonKey(name: "imdb_link") final String? imdbLink}) =
      _$MovieListResponseImpl;

  factory _MovieListResponse.fromJson(Map<String, dynamic> json) =
      _$MovieListResponseImpl.fromJson;

  @override
  @JsonKey(name: "rank")
  int get rank;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "big_image")
  String? get bigImage;
  @override
  @JsonKey(name: "genre")
  List<String>? get genre;
  @override
  @JsonKey(name: "thumbnail")
  String? get thumbnail;
  @override
  @JsonKey(name: "rating")
  String get rating;
  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "year")
  int? get year;
  @override
  @JsonKey(name: "imdbid")
  String? get imdbid;
  @override
  @JsonKey(name: "imdb_link")
  String? get imdbLink;

  /// Create a copy of MovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieListResponseImplCopyWith<_$MovieListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
