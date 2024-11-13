class MovieItem {
  final int rank;
  final String title;
  final String description;
  final String? thumbnail;
  final double rating;
  final int? year;

  MovieItem({
    required this.rank,
    required this.title,
    required this.description,
    required this.thumbnail,
    required this.rating,
    required this.year,
  });
}
